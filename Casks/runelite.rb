cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "c38dd3671337833982f91a4da1d699943ddb597eae698b63b73950ff0e29be5e",
         intel: "fbac3f85949392defaa40d1dd958abe3ce0b78776dd35807e2567b16450bec24"

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
