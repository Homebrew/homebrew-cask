cask "dropshare" do
  version "6.7,6135"
  sha256 "69fc0c82d18ecbcf9409c21611559d46fbe0eb3e2c8cf1d0ee27f0e96bd31d6c"

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
