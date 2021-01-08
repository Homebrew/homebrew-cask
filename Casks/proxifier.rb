cask "proxifier" do
  if MacOS.version <= :catalina
    version "2.26.2"
    sha256 :no_check
    url "https://www.proxifier.com/download/ProxifierMac.dmg"

    appcast "https://www.proxifier.com/changelog/mac#{version.major}.html",
            must_contain: version.major_minor
  else
    version "3.4.1"
    sha256 "e06ad22b11416add6f94d66c28f101453a8a66a0a1f12ebd668e6744dca63279"
    url "https://www.proxifier.com/download/ProxifierMac#{version.major}.dmg"
    appcast "https://www.proxifier.com/changelog/mac.html",
            must_contain: version.major_minor
  end

  name "Proxifier"
  homepage "https://www.proxifier.com/mac/"

  app "Proxifier.app"

  zap trash: [
    "~/Library/Application Support/Proxifier",
    "~/Library/Caches/com.initex.proxifier.macosx",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*",
    "~/Library/Logs/Proxifier",
    "~/Library/Preferences/com.initex.proxifier.macosx.plist",
    "~/Library/Saved Application State/com.initex.proxifier.macosx.savedState",
  ]
end
