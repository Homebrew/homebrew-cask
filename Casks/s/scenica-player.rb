cask "scenica-player" do
  version "1.4.5"
  sha256 "3bb893ff64e159253bfb94971671006ad4f4486adbd5a2a82691192ef902480f"

  url "https://sceni.ca/download/scenica-player/scenica-player-#{version}.zip"
  name "Scenica Player"
  desc "Turn your device into an on-set player"
  homepage "https://sceni.ca/en/player/"

  livecheck do
    url :homepage
    regex(/href=.*?scenica[._-]player[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Scenica Player.app"

  zap trash: "~/Library/Preferences/ByHost/ca.sceni.Player.*.plist"
end
