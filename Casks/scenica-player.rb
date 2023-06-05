cask "scenica-player" do
  version "1.4.4"
  sha256 "16cde0707f6f792b34a7357f2efae3244812c632a060042128803e9d7202c497"

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
