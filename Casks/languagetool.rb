cask "languagetool" do
  version "1.1,37"
  sha256 "092d2e1b08e705f813a1d6855453bd258fc1b55d1b8fa344c6e8c6596be0f349"

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
