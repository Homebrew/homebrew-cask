cask "macmediakeyforwarder" do
  version "4.5.1"
  sha256 "352a690dcc654ca1b892afab403ec148747d8712f1ec3379efceda4664af70cd"

  url "https://github.com/quentinlesceller/macmediakeyforwarder/releases/download/v#{version}/MacMediaKeyForwarder.dmg"
  name "Mac Media Key Forwarder"
  desc "Media key forwarder for Apple Music and Spotify"
  homepage "https://github.com/quentinlesceller/macmediakeyforwarder/"

  depends_on macos: :tahoe

  app "MacMediaKeyForwarder.app"

  zap trash: [
    "~/Library/Preferences/com.milgra.hsmke.plist",
    "~/Library/Preferences/com.quentinlesceller.macmediakeyforwarder.plist",
  ]
end
