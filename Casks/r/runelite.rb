cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.7"
  sha256 arm:   "b8afe68ced65189de59a261f455991e75d7a4fe971d8dc3abeb4df6ff14d82b7",
         intel: "c3a63e2b47fcf76ab65ae80a224dd18023addd2b29bba3b473c68671c5d279d3"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-#{arch}.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/RuneLite[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "RuneLite.app"

  zap trash: [
    "~/.runelite",
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
