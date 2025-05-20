cask "coolterm" do
  version "2.4.0.3.0.1425"
  sha256 "b1abf1567a8024197e9d8d4d421e80c128f967faec9efa8a14223dd29f079715"

  url "https://freeware.the-meiers.org/previous/CoolTermMac#{version.major_minor_patch.no_dots}.dmg"
  name "CoolTerm"
  desc "Serial port terminal"
  homepage "https://freeware.the-meiers.org/"

  livecheck do
    url "https://freeware.the-meiers.org/version/CoolTerm.ver"
    regex(/^\s*v?(\d+(?:\.\d+)+)\s*$/i)
  end

  depends_on macos: ">= :mojave"

  app "CoolTerm.app"

  zap trash: [
    "~/Library/Preferences/CoolTerm_Prefs.plist",
    "~/Library/Saved Application State/org.the-meiers.coolterm.savedState",
  ]
end
