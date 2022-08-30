cask "languagetool-for-desktop" do
  version :latest
  sha256 :no_check

  url "https://languagetool.org/download/mac-app/LanguageToolDesktop-latest.dmg"
  name "LanguageTool for Desktop"
  desc "Grammar, spelling and style suggestions in all the writing apps"
  homepage "https://languagetool.org"

  depends_on macos: ">= :big_sur"

  app "LanguageTool for Desktop.app"
end
