cask "languagetool-desktop" do
  version "2.9.4"
  sha256 "f16886110d16976199e4561ec131912b3f5aafcc17f5f25d4b7419f04c5c67e5"

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
