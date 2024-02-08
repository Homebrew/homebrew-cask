cask "coolterm" do
  version "2.1.0.3.0.1282"
  sha256 :no_check

  url "https://web.archive.org/web/20230330021625/https://freeware.the-meiers.org/CoolTermMac.dmg"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://web.archive.org/web/20230330021625/https://freeware.the-meiers.org/"

  # 509 error for the site
  deprecate! date: "2024-01-24", because: "site is not accessible"

  depends_on macos: ">= :mojave"

  app "CoolTerm.app"

  zap trash: [
    "~/Library/Preferences/CoolTerm_Prefs.plist",
    "~/Library/Saved Application State/org.the-meiers.coolterm.savedState",
  ]
end
