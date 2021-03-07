cask "opera" do
  version "74.0.3911.203"
  sha256 "f076ae12e5998060b3b3fb5e46ca7c8f02065090efe2dd0069b0cd801ca87c78"

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
