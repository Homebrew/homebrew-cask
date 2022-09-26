cask "languagetool" do
  version "0.2.2,29"
  sha256 "07d440e3f0847f39b482c129fc9f2ea476bdd1a5a4467ed2f1995408dcb41bec"

  url "https://languagetool.org/download/mac-app/LanguageToolDesktop-#{version.csv.first}.dmg"
  name "LanguageTool for Desktop"
  desc "Grammar, spelling and style suggestions in all the writing apps"
  homepage "https://languagetool.org/"

  livecheck do
    url "https://languagetool.org/download/mac-app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "LanguageTool for Desktop.app"

  zap trash: [
    "~/Library/Application Support/LanguageTool for Desktop",
    "~/Library/Caches/org.languagetool.desktop",
    "~/Library/Preferences/org.languagetool.desktop.plist",
  ]
end
