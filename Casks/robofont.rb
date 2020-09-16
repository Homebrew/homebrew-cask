cask "robofont" do
  version "3.4"
  sha256 "df986128e4630f93ef38fb9245f04f0b0fd2b603b0caa1753a6d62015e8b98a8"

  # static.typemytype.com/robofont/ was verified as official when first introduced to the cask
  url "https://static.typemytype.com/robofont/RoboFont.dmg"
  appcast "https://doc.robofont.com/appcast.xml"
  name "RoboFont"
  homepage "https://robofont.com/"

  app "RoboFont.app"
end
