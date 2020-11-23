cask "proxifier" do
  if MacOS.version <= :catalina
    version "2.26.2"
    sha256 "671c9e8bfb8619b8c39574bad38d3add7b460e491e99a6dfbace6dd3f7535e69"
    url "https://www.proxifier.com/download/ProxifierMac.dmg"

    appcast "https://www.proxifier.com/changelog/mac#{version.major}.html",
            must_contain: version.major_minor
  else
    version "3.2.1"
    sha256 "7e0d09eb626d9bd8001e6245566564d2081b859a7afa2b5ab922714d320f3f97"
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
