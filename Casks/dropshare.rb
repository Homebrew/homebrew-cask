cask "dropshare" do
  version "5.32,5421"
  sha256 "5d9fbc732ef1a43a1992f4445476ec5415cdfdc970dd7f63a64fc3bb4ea5d955"

  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.csv.second}.app.zip",
      verified: "d2wvuuix8c9e48.cloudfront.net/"
  name "Dropshare"
  desc "File sharing solution"
  homepage "https://dropshare.app/"

  livecheck do
    url "https://dropshare.app/sparkle/Dropshare#{version.major}.xml"
    strategy :sparkle do |item|
      "#{item.title[/(\d+(?:\.\d+)+)/i, 1]},#{item.version}"
    end
  end

  app "Dropshare #{version.major}.app"
  binary "#{appdir}/Dropshare #{version.major}.app/Contents/Resources/ds.sh", target: "ds"

  zap trash: [
    "~/Library/Application Support/Dropshare #{version.major}",
    "~/Library/Caches/net.mkswap.Dropshare#{version.major}",
    "~/Library/Cookies/net.mkswap.Dropshare#{version.major}.binarycookies",
    "~/Library/Logs/Dropshare #{version.major}",
    "~/Library/Preferences/net.mkswap.Dropshare#{version.major}.plist",
  ]
end
