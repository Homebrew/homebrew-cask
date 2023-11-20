cask "runelite" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.10"
  sha256 arm:   "867fc814872a4d9ecb12ff61927db4a62a4b826da3f92521f4d840cf2daa914a",
         intel: "44f016c5a76dcf8e59e209deb90ebcf26f9cff2066a477a7de449e14f100fd81"

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
