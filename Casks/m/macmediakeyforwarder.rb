cask "macmediakeyforwarder" do
  version "4.2.0"
  sha256 "658bb67f587bc4d604178037287a7d1416345c7f297a6fb82ace5b47cce8a0d6"

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
