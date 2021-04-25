cask "proxifier" do
  if MacOS.version <= :catalina
    version "2.26"
    sha256 :no_check
    url "https://www.proxifier.com/download/ProxifierMac.dmg"

    livecheck do
      url "https://www.proxifier.com/changelog/mac#{version.major}.html"
      strategy :page_match
      regex(/Version\s*(\d+(?:\.\d+)*)/i)
    end
  else
    version "3.5"
    sha256 "7e2c10947e8fd95accc03c5f793d388b05784d34c8f8841f37e5a4fc05c81d1b"
    url "https://www.proxifier.com/download/ProxifierMac#{version.major}.dmg"

    livecheck do
      url "https://www.proxifier.com/changelog/mac.html"
      strategy :page_match
      regex(/Version\s*(\d+(?:\.\d+)*)/i)
    end
  end

  name "Proxifier"
  homepage "https://www.proxifier.com/mac/"

  app "Proxifier.app"

  zap trash: [
    "~/Library/Application Scripts/com.initex.proxifier.v3.macos",
    "~/Library/Application Support/Proxifier",
    "~/Library/Caches/com.initex.proxifier.macosx",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*",
    "~/Library/Containers/com.initex.proxifier.v3.macos",
    "~/Library/Group Containers/NXELXU5YLW.com.initex.proxifier.v3.macos",
    "~/Library/Logs/Proxifier",
    "~/Library/Preferences/com.initex.proxifier.macosx.plist",
    "~/Library/Saved Application State/com.initex.proxifier.macosx.savedState",
  ]
end
