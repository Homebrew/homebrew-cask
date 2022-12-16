cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "db46fe083bbcd9f813d790729d04bd6b280c9ea726e8d3d1e0c0e7bafba25cf6",
         intel: "d7a22fea82fafd9d8cfabe53591d0ca83bf08d505a33d9348bffcbfab81695ad"

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
