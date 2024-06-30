cask "dwarf-fortress-lmp" do
  version "0.47.05+dfhack-r1"
  sha256 "c4931ef75ac5e474782f4353621b2f795f01f8f795d0727ee186c87af35cc42b"

  url "https://dffd.bay12games.com/download.php?id=12202&f=Lazy+Mac+Pack+v#{version}.dmg"
  name "Dwarf Fortress LMP (Lazy Mac Pack)"
  desc "Use and switch graphics packs with Dwarf Fortress without corrupting your game"
  homepage "https://dffd.bay12games.com/file.php?id=12202"

  livecheck do
    url :homepage
    regex(/Lazy\+Mac\+Pack\+v(.+)\.dmg/i)
  end

  # Renamed for clarity: suite name is inconsistent with branding
  suite "Lazy Mac Pack v#{version.sub("+", " ")}", target: "Dwarf Fortress LMP"

  zap trash: [
    "~/Library/Preferences/com.phoenix-dev.setresx.plist",
    "~/Library/Preferences/Lazy Mac Pack.plist",
    "~/Library/Saved Application State/Lazy Mac Pack.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
