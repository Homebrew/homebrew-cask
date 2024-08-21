cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "965e941244e203dd2cdc78e704b16ac3734c050ef1af764ba5cd32a1b29868f0",
         intel: "3acff2d6d6710bcb75505ab32536c366908154e323fb096f63378fc5e4d3ffbc"

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
