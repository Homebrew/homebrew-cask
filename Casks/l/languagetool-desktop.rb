cask "languagetool-desktop" do
  version "2.12.0"
  sha256 "89b8c6b3b4cd5ae9111860b6f6a269beefd5b91c7d72e9f6404b3542cc1e3fe4"

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
