cask "photoninja" do
  version "1.3.10"
  sha256 "9f6df73e21dffb47e281183ea8fd6a8ed74bb0ad725240c7cfbba4a7fbb1dce7"

  # picturecode.cachefly.net/ was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  appcast "https://www.picturecode.com/download.php"
  name "Photo Ninja"
  desc "Professional RAW converter"
  homepage "https://www.picturecode.com/index.php"

  app "PhotoNinja_#{version}.app"
end
