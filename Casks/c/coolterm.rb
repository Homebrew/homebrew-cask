cask "coolterm" do
  version "2.1.1"
  sha256 "24a2ca96132258a5080412de44e8e7e309dbb4e61a1ada85dbe6e079e7a2c046"

  url "https://freeware.the-meiers.org/previous/CoolTermMac#{version.no_dots}.dmg"
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
