cask "liclipse" do
  version "8.0.0,gaet71iufahajbv"
  sha256 "df93ae345b6d5924fe598adda75b5904b74debd86d46ea3f2fb089306388566d"

  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.tar.gz",
      verified: "mediafire.com/file/"
  name "LiClipse"
  desc "Lightweight editors, theming and usability improvements for Eclipse"
  homepage "https://www.liclipse.com/"

  livecheck do
    url "https://www.liclipse.com/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/([0-9a-z]+)/liclipse_(\d+(?:\.\d+)*)_macosx\.cocoa\.x86_64\.tar\.gz}i)
      "#{match[2]},#{match[1]}"
    end
  end

  app "LiClipse.app"
end
