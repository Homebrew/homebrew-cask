cask "messenger-unofficial" do
  version "0.1.13.1491443794,7b1777b58fef0bf9"
  sha256 "6b6f9888c9bf4e7d8fb2db547331cea7e9df99b85f914322af12a476c47bc984"

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version.csv.first}-#{version.csv.second}.zip"
  name "Messenger"
  homepage "https://fbmacmessenger.rsms.me/"

  livecheck do
    url "https://fbmacmessenger.rsms.me/changelog.xml"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[/.*-(.*?)\.zip/i, 1]}"
    end
  end

  app "Messenger.app"

  zap trash: [
    "~/Library/Caches/me.rsms.fbmessenger",
    "~/Library/Cookies/me.rsms.fbmessenger.binarycookies",
    "~/Library/Preferences/me.rsms.fbmessenger.plist",
  ]
end
