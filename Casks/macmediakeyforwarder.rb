cask "macmediakeyforwarder" do
  version "3.1.2"
  sha256 "ae6a593a4e3f8e28351911e12df208275f14f781e9c3e0c11f9ba33105415751"

  url "https://github.com/quentinlesceller/macmediakeyforwarder/releases/download/v#{version}/MacMediaKeyForwarder.zip"
  name "Mac Media Key Forwarder"
  desc "Media key forwarder for iTunes and Spotify"
  homepage "https://github.com/quentinlesceller/macmediakeyforwarder/"

  depends_on macos: ">= :sierra"

  app "MacMediaKeyForwarder.app"

  zap trash: "~/Library/Preferences/com.milgra.hsmke.plist"
end
