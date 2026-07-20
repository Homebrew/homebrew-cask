cask "languagetool-desktop" do
  version "3.1.4"
  sha256 "0bb3b5c64105d63976ac02cdb1ec45647f663deec1ce22f6cc4f26e2eca783cb"

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
  depends_on macos: :monterey

  app "LanguageTool for Desktop.app"

  uninstall launchctl: [
              "org.languageTool.desktop.LauncherApplication",
              "org.languageTool.desktop.UninstallHelper",
            ],
            quit:      "org.languagetool.desktop"

  zap trash: [
    "~/Library/Application Scripts/N6PF5J2JR8.org.languagetool.desktop.group",
    "~/Library/Application Scripts/org.languagetool.desktop.ShareExtension",
    "~/Library/Application Support/LanguageTool for Desktop",
    "~/Library/Caches/org.languagetool.desktop",
    "~/Library/Containers/org.languagetool.desktop.ShareExtension",
    "~/Library/Group Containers/N6PF5J2JR8.org.languagetool.desktop.group",
    "~/Library/HTTPStorages/org.languagetool.desktop*",
    "~/Library/LaunchAgents/org.languageTool.desktop.UninstallHelper.plist",
    "~/Library/Preferences/org.languagetool.desktop.plist",
  ]
end
