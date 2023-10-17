cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.9"
  sha256 arm:   "f6aea14a6e7f55ccfc2f48788d9c20e00a4579796000b00c289ffc6e6db4b409",
         intel: "7b9c20b8e731d667995f9e6d1370e84c304bf29f4b5e7bfba1b0d340e8e7551f"

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
