cask "photoninja" do
  version "1.4.0d"
  sha256 "9f6df73e21dffb47e281183ea8fd6a8ed74bb0ad725240c7cfbba4a7fbb1dce7"

  url "https://picturecode.cachefly.net/photoninja/downloads/PhotoNinja_#{version}_sse42.pkg",
      verified: "picturecode.cachefly.net/photoninja/downloads/"
  name "Photo Ninja"
  desc "Professional RAW converter"
  homepage "https://www.picturecode.com/index.php"

  livecheck do
    url "https://www.picturecode.com/download.php"
    regex(/PhotoNinja[._-]v?(\d+(?:\.\d+)+\w?)[._-]sse42\.pkg/i)
  end

  pkg "PhotoNinja_#{version}_sse42.pkg"

  uninstall pkgutil: "PhotoNinja.#{version}.sse42"
end
