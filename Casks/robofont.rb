cask "robofont" do
  version "3.4"
  sha256 :no_check

  url "https://static.typemytype.com/robofont/RoboFont.dmg",
      verified: "static.typemytype.com/robofont/"
  appcast "https://doc.robofont.com/appcast.xml"
  name "RoboFont"
  homepage "https://robofont.com/"

  app "RoboFont.app"
end
