cask "liclipse" do
  version "9.0.1,5ao858sjvo8gibh"
  sha256 "bbba6f686ecb62a6b32ffd695358d4729a0db81bc5578a7fe5973bebafa1a8df"

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

  app "LiClipse.app"
end
