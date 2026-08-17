cask "anka-build-cloud-registry" do
  arch arm: "arm64", intel: "amd64"

  version "1.51.0-72cf2b3c"
  sha256 arm:   "4c0084fea361b8b9bbe54383cc080062864b42829f37fc1c5edf0e6070eb11f7",
         intel: "44af2e7c3a1ee40aaae95f2e84448e0f092157d296347112f4531ba5945249b3"

  url "https://downloads.veertu.com/anka/anka-registry-#{arch}-#{version}.pkg"
  name "Anka Build Cloud Controller"
  desc "Anka virtual machine registry & API"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-build-cloud-registry-darwin-#{arch}-latest"
    regex(/anka-registry-#{arch}[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

  pkg "anka-registry-#{arch}-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Veertu/Anka/tools/registry/uninstall.sh",
    args:       ["-f"],
    sudo:       true,
  }

  zap trash: "/Library/Logs/Veertu/AnkaRegistry",
      rmdir: "/Library/Application Support/Veertu/Anka/anka-registry"

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
