cask "scenica-player" do
  version "1.4.3"
  sha256 "39d06a309188968878d2475193584fc22023a641692c802bfaef15fe574c8ebf"

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
