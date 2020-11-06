cask "liclipse" do
  version "7.0.0,tv5jvx061tvr17a"
  sha256 "027e579af8cfe4e603be1740f65892879e2969fc0586bf8591f5b15cc031718d"

  # mediafire.com/file/ was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast "https://www.liclipse.com/download.html"
  name "LiClipse"
  homepage "https://www.liclipse.com/"

  app "LiClipse.app"
end
