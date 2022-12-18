cask "proxifier" do
  on_catalina :or_older do
    version "2.26"
    sha256 "671c9e8bfb8619b8c39574bad38d3add7b460e491e99a6dfbace6dd3f7535e69"

    url "https://www.proxifier.com/download/legacy/ProxifierMac#{version.no_dots}.dmg"

    livecheck do
      url "https://www.proxifier.com/changelog/mac#{version.major}.html"
      regex(/Version\s*(\d+(?:\.\d+)+)/i)
    end
  end
  on_big_sur :or_newer do
    version "3.7"
    sha256 "ed96cb643aa52292410109850997165d4c80f2782d596e018f53b33e45415ed3"

    url "https://www.proxifier.com/download/ProxifierMac#{version.major}.dmg"

    livecheck do
      url "https://www.proxifier.com/changelog/mac.html"
      regex(/Version\s*(\d+(?:\.\d+)+)/i)
    end
  end

  name "Proxifier"
  desc "Proxy client"
  homepage "https://www.proxifier.com/mac/"

  app "Proxifier.app"

  zap trash: [
    "~/Library/Application Scripts/com.initex.proxifier.v3.macos",
    "~/Library/Application Support/Proxifier",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*",
    "~/Library/Caches/com.initex.proxifier.macosx",
    "~/Library/Containers/com.initex.proxifier.v3.macos",
    "~/Library/Group Containers/NXELXU5YLW.com.initex.proxifier.v3.macos",
    "~/Library/Logs/Proxifier",
    "~/Library/Preferences/com.initex.proxifier.macosx.plist",
    "~/Library/Saved Application State/com.initex.proxifier.macosx.savedState",
  ]
end
