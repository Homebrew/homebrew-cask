cask "anka-build-cloud-registry" do
  arch arm: "arm64", intel: "amd64"

  version "1.52.0-36aa9fba"
  sha256 arm:   "6081e5b4f0d18163f6f2fbfa3f2c422b51fecc4cde181da1106199df17fdabbd",
         intel: "5a3c06f5e7d924cbbb53a5ec73770438635c0594aecfecda55e49ba3635840dc"

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
