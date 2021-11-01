cask "runelite" do
  version "2.2.0"
  sha256 "0c6690000fb46eb1ff6d193a58ff3d7dc0e3514a03d0b1a22ca2351ef07e79c8"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite-x64.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url "https://github.com/runelite/launcher/releases"
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)*)/RuneLite-x64\.dmg}i)
  end

  app "RuneLite.app"

  zap trash: [
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
