cask "dropshare" do
  version "6.17,6293"
  sha256 "df2f9b45882ab3dfce48410bac1f886622d1ed1a8e0bb96f4645e96f1c33b50d"

  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.csv.second}.app.zip"
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
  depends_on macos: :monterey

  app "Dropshare #{version.major}.app"
  binary "#{appdir}/Dropshare #{version.major}.app/Contents/Resources/ds.sh", target: "ds"

  zap trash: [
    "~/Library/Application Scripts/net.mkswap.Dropshare*.Upload-with-Dropshare",
    "~/Library/Application Support/Dropshare*",
    "~/Library/Application Support/net.mkswap.Dropshare*",
    "~/Library/Caches/net.mkswap.Dropshare*",
    "~/Library/Containers/net.mkswap.Dropshare*.Upload-with-Dropshare",
    "~/Library/Cookies/net.mkswap.Dropshare*.binarycookies",
    "~/Library/HTTPStorages/net.mkswap.Dropshare*",
    "~/Library/Logs/Dropshare*",
    "~/Library/Preferences/net.mkswap.Dropshare*.plist",
  ]
end
