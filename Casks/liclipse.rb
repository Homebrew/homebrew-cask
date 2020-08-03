cask "liclipse" do
  version "6.3.0,7tlqxhknfqih3fs"
  sha256 "8ddf6eee0ffe9fe58c8c2144078689b53c1d154a033aace913c5c0f25f6502b2"

  # mediafire.com/file/ was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast "https://www.liclipse.com/download.html"
  name "LiClipse"
  homepage "https://www.liclipse.com/"

  app "LiClipse.app"
end
