cask "dwarf-fortress-lmp" do
  version "0.47.04 dfhack-b1"
  sha256 "7023cb5952172bdb74bda215a7856a0dd769188cc277846fd02a70783e86ea36"

  # dffd.bay12games.com/ was verified as official when first introduced to the cask
  url "https://dffd.bay12games.com/download.php?id=12202&f=Lazy+Mac+Pack.v#{version}.dmg"
  name "Dwarf Fortress LMP (Lazy Mac Pack)"
  homepage "http://www.bay12forums.com/smf/index.php?topic=158322.0"

  # Renamed for clarity: suite name is inconsistent with branding
  suite "Lazy Mac Pack v#{version}", target: "Dwarf Fortress LMP"

  zap trash: [
    "~/Library/Preferences/Lazy Mac Pack.plist",
    "~/Library/Preferences/com.phoenix-dev.setresx.plist",
    "~/Library/Saved Application State/Lazy Mac Pack.savedState",
  ]
end
