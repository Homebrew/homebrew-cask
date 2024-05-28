cask "liclipse" do
  version "11.1.0,bh5hc47dg1iamp7"
  sha256 "0245e5c79a3433f1861b624ed1e2c913ca2ee0299118b135962ebc75dcfda6c6"

  url "https://www.mediafire.com/file/#{version.csv.second}/liclipse_#{version.csv.first}_macosx.cocoa.x86_64.tar.gz",
      verified: "mediafire.com/file/"
  name "LiClipse"
  desc "Lightweight editors, theming and usability improvements for Eclipse"
  homepage "https://www.liclipse.com/"

  livecheck do
    url "https://www.liclipse.com/download.html"
    regex(%r{href=.*?/([0-9a-z]+)/liclipse[._-]v?(\d+(?:\.\d+)+)_macosx\.cocoa\.x86_64\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "LiClipse_x86_64/LiClipse.app"
  app "LiClipse_x86_64/LiClipseJre19.app"

  zap trash: [
    "~/.liclipse",
    "~/Documents/LiClipse Workspace",
    "~/Library/Preferences/com.brainwy.liclipse.rcp.product.plist",
    "~/Library/Saved Application State/com.brainwy.liclipse.rcp.product.savedState",
  ]
end
