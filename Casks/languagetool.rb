cask "languagetool" do
  version "1.3.3"
  sha256 "94e90faf1d3e096d65ab3b28f468507843586d771c7e03138fb3932b9e0480cf"

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
