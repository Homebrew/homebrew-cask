cask "macmediakeyforwarder" do
  version "3.1.1"
  sha256 "b3a0b5746245a3d3f54fbdaf6ad4990604bec51a83cfcb8a8b445f23c4faccd1"

  url "https://github.com/quentinlesceller/macmediakeyforwarder/releases/download/v#{version}/MacMediaKeyForwarder.zip"
  name "Mac Media Key Forwarder"
  desc "Media key forwarder for iTunes and Spotify"
  homepage "https://github.com/quentinlesceller/macmediakeyforwarder/"

  depends_on macos: ">= :sierra"

  app "MacMediaKeyForwarder.app"

  zap trash: "~/Library/Preferences/com.milgra.hsmke.plist"
end
