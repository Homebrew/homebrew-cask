cask "liclipse" do
  version "9.0.0,ks1e8pymgewjnrx"
  sha256 "dae61a468d86520fa653ca34518c8700220cd727375fba9d54fb213db6ee2b32"

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
