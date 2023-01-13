cask "scenica-player" do
  version "1.3.2"
  sha256 "59d7417cf3801de0db32d44694eb670a03410fdd206f1df90f8e113d4872ee0b"

  url "https://sceni.ca/download/scenica-player/scenica-player-#{version}.zip"
  name "Scenica Player"
  desc "Turn your device into an on-set player"
  homepage "https://sceni.ca/en/player/"

  livecheck do
    url :homepage
    regex(/href=.*?scenica[._-]player[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Scenica Player.app"

  zap trash: "~/Library/Preferences/ByHost/ca.sceni.Player.*.plist"
end
