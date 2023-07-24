cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "88147cb5602f56b27fc12bc2b14ad92d9c78c77585fead1f9eb65bc48291ce27",
         intel: "c07d5abd86cd8f30dc99aae3059e09a330aed2e024f71cc871eec954521a6772"

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
