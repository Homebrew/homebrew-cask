cask "languagetool" do
  version "1.1.1,38"
  sha256 "586b0df96025e78899979445917fe559a14f7d70749c9d1f7e0cfc29b2312f69"

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
