cask "languagetool" do
  version "0.2.3,30"
  sha256 "8de37d101526e30add8fcf66d4616e8c0be9f1e794fd6e760597a911cffbe7c5"

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
