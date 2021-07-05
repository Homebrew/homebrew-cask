cask "liclipse" do
  version "7.3.0,xw7ef6ia92588mw"
  sha256 "fcdfe85af8df8e64ac55f5ea84c9c7d54a95e34566f20fcd539d5fc6263ec014"

  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg",
      verified: "mediafire.com/file/"
  name "LiClipse"
  desc "Lightweight editors, theming and usability improvements for Eclipse"
  homepage "https://www.liclipse.com/"

  livecheck do
    url "https://www.liclipse.com/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/([0-9a-z]+)/liclipse_(\d+(?:\.\d+)*)_macosx\.cocoa\.x86_64\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  app "LiClipse.app"
end
