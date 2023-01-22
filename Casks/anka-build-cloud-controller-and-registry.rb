cask "anka-build-cloud-controller-and-registry" do
  version "1.31.1-ab1c787e"
  sha256 "e3effc1b5d265c182f3aa20a776aeddf14ac130468b4e6c33159b792b7974c86"

  url "https://downloads.veertu.com/anka/AnkaControllerRegistry-#{version}.pkg"
  name "Anka Build Cloud Controller & Registry"
  desc "Virtual machine management GUI/API and registry"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/ankacontroller-registry-mac-latest"
    strategy :header_match
    regex(/AnkaControllerRegistry[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
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
