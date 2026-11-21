cask "macmediakeyforwarder" do
  version "4.6.0"
  sha256 "4c9dc42c6cbe8d6866b9c64d03edf26dce9ff3405ad2b2840f54b8d2d9be1d6b"

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
