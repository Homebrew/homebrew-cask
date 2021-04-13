cask "opera" do
  version "75.0.3969.149"
  sha256 "27d41d8ba9c668c89027c5875a09b01cdc5a97f43bdc7d9185dd9e670d242629"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera/desktop/"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Application Support/com.operasoftware.Opera/",
  ]
end
