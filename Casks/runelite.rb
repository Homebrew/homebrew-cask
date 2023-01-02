cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "c8054d9d73364812739b30747f8461a8029bf2cfb14469f3c871c0e9d660b840",
         intel: "89dbf261e8b36b3084630b56e2e5b30fe08dad5a9b72592b2bdc7617fe914a4e"

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
