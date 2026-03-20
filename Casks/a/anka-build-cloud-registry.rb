cask "anka-build-cloud-registry" do
  arch arm: "arm64", intel: "amd64"

  version "1.50.0-5908cc18"
  sha256 arm:   "9ef22988d025475ed06fd135605f18eac25f3d9eb6477cc054142e1259b587c2",
         intel: "ec4d4522db9fd873b596bfc490b973ecd02ef4fcc908117d45f26a2e32a2be8e"

  url "https://downloads.veertu.com/anka/anka-registry-#{arch}-#{version}.pkg"
  name "Anka Build Cloud Controller"
  desc "Anka virtual machine registry & API"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-build-cloud-registry-darwin-#{arch}-latest"
    regex(/anka-registry-#{arch}[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

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
