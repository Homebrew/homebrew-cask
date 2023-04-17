cask "liclipse" do
  version "10.0.0,5f5bxrjwhyb1ost"
  sha256 "4ad9d78d2e11902854e77974c640f878257572777d907b80e52298d90f04799a"

  url "https://www.mediafire.com/file/#{version.csv.second}/liclipse_#{version.csv.first}_macosx.cocoa.x86_64.tar.gz",
      verified: "mediafire.com/file/"
  name "LiClipse"
  desc "Lightweight editors, theming and usability improvements for Eclipse"
  homepage "https://www.liclipse.com/"

  livecheck do
    url "https://www.liclipse.com/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/([0-9a-z]+)/liclipse[._-]v?(\d+(?:\.\d+)+)_macosx\.cocoa\.x86_64\.t}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
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
