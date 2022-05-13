cask "liclipse" do
  version "8.2.0,ycuiec8ypcpkj1v"
  sha256 "6cd5a9bc3e0b37c564bf5436caf757e76850512b70a4cea387c0b8a587bd80ee"

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
