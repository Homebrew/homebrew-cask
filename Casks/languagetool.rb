cask "languagetool" do
  version "1.1.2,39"
  sha256 "97093c0d17d99f1cb9429abf378abc342fce08721e1f5639070ab6634ee8a8f2"

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
