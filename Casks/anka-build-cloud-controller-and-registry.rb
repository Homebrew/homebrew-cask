cask "anka-build-cloud-controller-and-registry" do
  version "1.33.0-5465bb03"
  sha256 "b41c8f944314eea9b891c928b45c239a234f3844678f67d756ccacabd8069c01"

  url "https://downloads.veertu.com/anka/AnkaControllerRegistry-#{version}.pkg"
  name "Anka Build Cloud Controller & Registry"
  desc "Virtual machine management GUI/API and registry"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/ankacontroller-registry-mac-latest"
    regex(/AnkaControllerRegistry[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
    strategy :header_match
  end

  pkg "AnkaControllerRegistry-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Veertu/Anka/tools/controller/uninstall.sh",
    args:       ["-f"],
    sudo:       true,
  }

  zap trash: "/Library/Logs/Veertu/AnkaController",
      rmdir: "/Library/Application Support/Veertu/Anka/registry"

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
