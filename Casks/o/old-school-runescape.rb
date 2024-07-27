cask "old-school-runescape" do
  version "1.2"
  sha256 :no_check

  url "https://www.runescape.com/downloads/OldSchool.dmg"
  name "Old School RuneScape"
  desc "Game client for Old School RuneScape"
  homepage "https://oldschool.runescape.com/"

  livecheck do
    skip "No version information available"
  end

  app "Old School RuneScape.app"

  zap trash: [
    "~/jagex_cl_oldschool_LIVE.dat",
    "~/jagexcache/oldschool",
    "~/random.dat",
  ]

  caveats do
    requires_rosetta
  end
end
