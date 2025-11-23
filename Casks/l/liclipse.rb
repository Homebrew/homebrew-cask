cask "liclipse" do
  arch arm: "Aarch64", intel: "x86_64"

  on_arm do
    version "12.0.1,o9ccnc5f0ks4dgq"
    sha256 "d0ecbe035cf7a0684d5e2481ac967b23d6c2fc42330f062bb0485c09dc25d931"
  end
  on_intel do
    version "12.0.1,b8h7wnjqtalkxls"
    sha256 "9206476c44c1023d818a4599a1cb1578d6247f337049ac5a4206b8d3525e6a1b"
  end

  url "https://www.mediafire.com/file_premium/#{version.csv.second}/liclipse_#{version.csv.first}_macosx.cocoa.#{arch.downcase}.tar.gz",
      verified: "mediafire.com/file_premium/"
  name "LiClipse"
  desc "Lightweight editors, theming and usability improvements for Eclipse"
  homepage "https://www.liclipse.com/"

  livecheck do
    url "https://www.liclipse.com/download.html"
    regex(%r{href=.*?/([a-z0-9]+)/liclipse[._-]v?(\d+(?:\.\d+)+)_macosx\.cocoa\.#{arch.downcase}\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "LiClipse_#{arch}/LiClipse.app"
  artifact "LiClipse_#{arch}/LiClipseJre19.app", target: "#{appdir}/LiClipseJre19.app"

  zap trash: [
    "~/.liclipse",
    "~/Documents/LiClipse Workspace",
    "~/Library/Preferences/com.brainwy.liclipse.rcp.product.plist",
    "~/Library/Saved Application State/com.brainwy.liclipse.rcp.product.savedState",
  ]
end
