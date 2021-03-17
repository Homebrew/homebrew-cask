cask "photoninja" do
  version "1.3.10"
  sha256 "9f6df73e21dffb47e281183ea8fd6a8ed74bb0ad725240c7cfbba4a7fbb1dce7"

  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg",
      verified: "picturecode.cachefly.net/"
  name "Photo Ninja"
  desc "Professional RAW converter"
  homepage "https://www.picturecode.com/index.php"

  livecheck do
    url "https://www.picturecode.com/download.php"
    strategy :page_match
    regex(%r{href=.*?/Install_PhotoNinja_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "PhotoNinja_#{version}.app"
end
