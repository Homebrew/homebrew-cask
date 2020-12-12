cask "robofont" do
  version "3.4"
  sha256 :no_check

  # static.typemytype.com/robofont/ was verified as official when first introduced to the cask
  url "https://static.typemytype.com/robofont/RoboFont.dmg"
  appcast "https://doc.robofont.com/appcast.xml"
  name "RoboFont"
  homepage "https://robofont.com/"

  app "RoboFont.app"
end
