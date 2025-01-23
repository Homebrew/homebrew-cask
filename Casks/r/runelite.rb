cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "0d9fcb9c7603a444e1451c5d3de862dd543a531bb9f33e94bcc8e120f07a5251",
         intel: "3dd3b5aafb5587e4379fe758067a406675054cfad9dab55e65788f6a024a74c2"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
