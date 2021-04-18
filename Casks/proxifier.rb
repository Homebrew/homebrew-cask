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
    version "3.4"
    sha256 "e06ad22b11416add6f94d66c28f101453a8a66a0a1f12ebd668e6744dca63279"
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
