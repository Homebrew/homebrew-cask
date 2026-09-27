cask "macmediakeyforwarder" do
  version "4.5.0"
  sha256 "a21833c8652385840238299acea11c0234f1021ffe2bbe4a62f5173c0b089c33"

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
