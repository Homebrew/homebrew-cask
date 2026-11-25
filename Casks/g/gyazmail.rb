cask "gyazmail" do
  version "1.8"
  sha256 "6d8b78109cbd119f6b6dca20b23ed79ac820d6ea0f09c607ae21ea03acba67ea"

  url "https://gyazsquare.com/download/GyazMail-#{version}.dmg"
  name "GyazMail"
  desc "Email client"
  homepage "https://gyazsquare.com/gyazmail/"

  livecheck do
    url "https://gyazsquare.com/gyazmail/download/"
    regex(/Download\s*GyazMail\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "GyazMail.app"

  zap trash: [
    "~/Library/Application Support/GyazMail",
    "~/Library/Caches/com.apple.helpd/Generated/GyazMail Help*",
    "~/Library/Caches/jp.gyazsquare.GyazMail",
    "~/Library/HTTPStorages/jp.gyazsquare.GyazMail",
    "~/Library/Preferences/jp.gyazsquare.GyazMail.plist",
    "~/Library/Saved Application State/jp.gyazsquare.GyazMail.savedState",
  ]
end
