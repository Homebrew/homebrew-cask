cask "languagetool-desktop" do
  version "2.10.3"
  sha256 "605f8ff9351597e4a69e4771d477a916163d37664bd349a8042774b7f8effa59"

  url "https://languagetool.org/download/mac-app/LanguageToolDesktop-#{version.csv.first}#{version.csv.second if version.csv.second}.dmg"
  name "LanguageTool for Desktop"
  desc "Grammar, spelling and style suggestions in all the writing apps"
  homepage "https://languagetool.org/"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items (not just the newest one).
  livecheck do
    url "https://languagetool.org/download/mac-app/appcast.xml"
    regex(/LanguageToolDesktop[._-]v?(\d+(?:\.\d+)+)(.*)?\.dmg/i)
    strategy :sparkle do |items, regex|
      items.filter_map do |item|
        # Skip items in unstable channels (e.g. `beta`)
        next unless item.channel.nil?

        match = item.url&.match(regex)
        next unless match

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "LanguageTool for Desktop.app"

  uninstall quit: "org.languagetool.desktop"

  zap trash: [
    "~/Library/Application Support/LanguageTool for Desktop",
    "~/Library/Caches/org.languagetool.desktop",
    "~/Library/Preferences/org.languagetool.desktop.plist",
  ]
end
