cask "liclipse" do
  version "7.1.0,4avujhmdvxhyu49"
  sha256 "0d85e1f1d1e9e50cd7188ca7c5c685323d05dd41a81ec58842a375531e0cf036"

  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg",
      verified: "mediafire.com/file/"
  appcast "https://www.liclipse.com/download.html"
  name "LiClipse"
  homepage "https://www.liclipse.com/"

  app "LiClipse.app"
end
