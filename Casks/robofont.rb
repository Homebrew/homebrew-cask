cask "robofont" do
  version "3.4,2004281315"
  sha256 :no_check

  url "https://static.typemytype.com/robofont/RoboFont.dmg",
      verified: "static.typemytype.com/robofont/"
  name "RoboFont"
  homepage "https://robofont.com/"

  livecheck do
    url "https://doc.robofont.com/appcast.xml"
    strategy :sparkle
  end

  app "RoboFont.app"
end
