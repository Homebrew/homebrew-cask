cask "runelite" do
  version "2.1.5"
  sha256 "d8c6b4da96c6501d5529511e3cf71e0cb1e86b3bdba9ceaff9bc664bc8f76700"

  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite.dmg",
      verified: "github.com/runelite/launcher/"
  name "RuneLite"
  desc "Client for Old School RuneScape"
  homepage "https://runelite.net/"

  livecheck do
    url "https://github.com/runelite/launcher/releases"
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)*)/RuneLite\.dmg}i)
  end

  app "RuneLite.app"

  zap trash: [
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]
end
