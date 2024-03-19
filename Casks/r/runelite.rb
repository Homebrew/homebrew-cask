cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "86d04ef4a3bd79b9c0b7a1653d3107135291aa6084c1beeadf921b3ec4cc78e8",
         intel: "721d427204e606460a843dc723f223ead7a0299ad236c524e9c35ac0a80443e6"

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
