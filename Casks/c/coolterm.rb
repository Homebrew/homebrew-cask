cask "coolterm" do
  version "2.2.0.3.0.1327"
  sha256 "000bbb5d82edafd26d6778a0a1b893a2b3a527d7ecfc3e7bc00bf14c66840d47"

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
