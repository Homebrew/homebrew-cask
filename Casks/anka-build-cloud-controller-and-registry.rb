cask "anka-build-cloud-controller-and-registry" do
  version "1.20.0-035872f5"
  sha256 "cf375336267ce1712995d26fad9a0aa690c95d6e98ee87b9bdb8caae814eb6c3"

  url "https://downloads.veertu.com/anka/AnkaControllerRegistry-#{version}.pkg"
  name "Anka Build Cloud Controller & Registry"
  desc "Virtual machine management GUI/API and registry"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/ankacontroller-registry-mac-latest"
    strategy :header_match
    regex(/AnkaControllerRegistry[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
  end

  depends_on macos: ">= :yosemite"

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
