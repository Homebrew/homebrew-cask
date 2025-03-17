cask "anka-build-cloud-registry" do
  arch arm: "arm64", intel: "amd64"

  version "1.46.0-d8fb9604"
  sha256 arm:   "bd6719362f65cfc79ef5608dacefe5e0475104b02e4e2e2babee3272cdfed5a3",
         intel: "f791423c2ce97f528c8fd43301cb828fda086377cd2b1e5985dd385b8f9728b3"

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
