cask "proxifier" do
  version "3.0"
  sha256 "662777a758001826f61c7987c1c9c0df65cb40d74991741a898157d744499e3a"

  url "https://www.proxifier.com/download/ProxifierMac3.dmg"
  appcast "https://www.proxifier.com/changelog/mac.html",
          must_contain: version.major_minor
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
