cask "shotcut" do
  version "21.03.21"
  sha256 "c1321fb078a1edcb0412167dc989f0feb05130c591a66a84ebb4ff972e2f8e04"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end
