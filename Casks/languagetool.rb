cask "languagetool" do
  version "1.2.5"
  sha256 "413a47824a442e33f1c2db07700a6c93b7d2977b5dd4328a1f0db7c031228005"

  url "https://languagetool.org/download/mac-app/LanguageToolDesktop-#{version}.dmg"
  name "LanguageTool for Desktop"
  desc "Grammar, spelling and style suggestions in all the writing apps"
  homepage "https://languagetool.org/"

  livecheck do
    url "https://languagetool.org/download/mac-app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "LanguageTool for Desktop.app"

  uninstall quit: "org.languagetool.desktop"

  zap trash: [
    "~/Library/Application Support/LanguageTool for Desktop",
    "~/Library/Caches/org.languagetool.desktop",
    "~/Library/Preferences/org.languagetool.desktop.plist",
  ]
end
