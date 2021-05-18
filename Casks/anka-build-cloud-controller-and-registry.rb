cask "anka-build-cloud-controller-and-registry" do
  version "1.16.0-05de337e"
  sha256 "d4f4458e75c4ed021f459dc5efa6a1a5b823a00d92fd60cab62258077ad4c3aa"

  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaControllerRegistry-#{version}.pkg",
      verified: "d1efqjhnhbvc57.cloudfront.net/"
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
