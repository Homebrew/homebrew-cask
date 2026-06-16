cask "macmediakeyforwarder" do
  version "4.0.0"
  sha256 "2646853c124f2c46f294334144569fff628fad829346f4f1a39ad1b5d3189f23"

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
