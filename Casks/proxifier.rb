cask "proxifier" do
  if MacOS.version <= :catalina
    version "2.26.2"
    sha256 "671c9e8bfb8619b8c39574bad38d3add7b460e491e99a6dfbace6dd3f7535e69"
    url "https://www.proxifier.com/download/ProxifierMac.dmg"
  else
    version "3.0.9"
    sha256 "662777a758001826f61c7987c1c9c0df65cb40d74991741a898157d744499e3a"
    url "https://www.proxifier.com/download/ProxifierMac#{version.major}.dmg"
  end

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
