cask "coolterm" do
  version "2.1.1"
  sha256 :no_check

  url "https://freeware.the-meiers.org/CoolTermMac.dmg"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://freeware.the-meiers.org/"

  depends_on macos: ">= :mojave"

  app "CoolTerm.app"

  zap trash: [
    "~/Library/Preferences/CoolTerm_Prefs.plist",
    "~/Library/Saved Application State/org.the-meiers.coolterm.savedState",
  ]
end
