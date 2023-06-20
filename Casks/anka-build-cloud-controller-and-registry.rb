cask "anka-build-cloud-controller-and-registry" do
  version "1.34.0-4cda29d3"
  sha256 "a0a3977ce9f68f334b36517c07798ab35117a2d9d505a420a385fe61138a77c1"

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
