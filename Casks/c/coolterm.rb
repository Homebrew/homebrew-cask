cask "coolterm" do
  version "2.4.0.3.0.1425"
  sha256 "190a1f67d0362ce7ae4b531552925ef28e40004052c3be1fe9bf653e0678cddd"

  url "https://freeware.the-meiers.org/previous/CoolTermMac#{version.major_minor_patch.no_dots}.dmg"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://freeware.the-meiers.org/"

  livecheck do
    url "https://freeware.the-meiers.org/version/CoolTerm.ver"
    regex(/^\s*v?(\d+(?:\.\d+)+)\s*$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "CoolTerm.app"

  zap trash: [
    "~/Library/Preferences/CoolTerm_Prefs.plist",
    "~/Library/Saved Application State/org.the-meiers.coolterm.savedState",
  ]
end
