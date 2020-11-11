cask "liclipse" do
  version "7.0.1,d8v8ubpz8fkfy78"
  sha256 "fd518bc450ddb450b6b1db1e8a55106694690361a1cabd6de1e97b51c711013c"

  # mediafire.com/file/ was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast "https://www.liclipse.com/download.html"
  name "LiClipse"
  homepage "https://www.liclipse.com/"

  app "LiClipse.app"
end
