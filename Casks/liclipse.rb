cask "liclipse" do
  version "8.1.0,z1jtqfr7p9g1bat"
  sha256 "fea2b0c0254a04f10abb985fb050821df2cb475bae8f463e62af0dc2958271fb"

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
