cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "b949ee5e649f89a129dce0516fff06b77637085c4860f58a484a2228cde07df2",
         intel: "033959b4287d3d79466ee7f4d8528c8ec744ff0c75ef9b605f6f8fdd43947266"

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
