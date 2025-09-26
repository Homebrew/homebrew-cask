cask "dropshare" do
  version "6.6.1,6116"
  sha256 "cd5fbf5e37f0fdfb700bb88afa4191f6a210dec41ddf43fcc8fa4b3bb6c0bae3"

  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.csv.second}.app.zip",
      verified: "d2wvuuix8c9e48.cloudfront.net/"
  name "Dropshare"
  desc "File sharing solution"
  homepage "https://dropshare.app/"

  livecheck do
    url "https://dropshare.app/sparkle/Dropshare#{version.major}.xml"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :sparkle do |item, regex|
      "#{item.title[regex, 1]},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
