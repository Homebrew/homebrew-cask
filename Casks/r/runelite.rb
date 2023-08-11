cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.8"
  sha256 arm:   "dc433c69f419f4835ecb3ef1962dda0f525d2297143b3401b4c51218f76b9fe8",
         intel: "5f1dcc901c5f918f6fea02bf310e0e095231cc58c9cd956dc8e31f520c19f167"

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
