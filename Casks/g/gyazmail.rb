cask "gyazmail" do
  version "1.7.1"
  sha256 "002ad687dedfc9eea6391b4241312e35b6143d5caa0a813d8fe4e323a568fbfb"

  url "https://gyazsquare.com/download/GyazMail-#{version.no_dots}.dmg"
  name "GyazMail"
  desc "Email client"
  homepage "https://gyazsquare.com/gyazmail/"

  livecheck do
    url "https://gyazsquare.com/gyazmail/download/"
    regex(/Download\s*GyazMail\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "GyazMail.app"

  zap trash: [
    "~/Library/Application Support/GyazMail",
    "~/Library/Caches/com.apple.helpd/Generated/GyazMail Help*",
    "~/Library/Caches/jp.gyazsquare.GyazMail",
    "~/Library/HTTPStorages/jp.gyazsquare.GyazMail",
    "~/Library/Preferences/jp.gyazsquare.GyazMail.plist",
    "~/Library/Saved Application State/jp.gyazsquare.GyazMail.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
