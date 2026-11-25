cask "reverso" do
  version "2.18.0,722"
  sha256 "7f702ab3b79faa4b7427e8779de16933252c13000b931933d4b567d53af54a5b"

  url "https://cdn.reverso.net/download/reverso/desktop/macos/distrib/Reverso_#{version.csv.first}.#{version.csv.second}.zip"
  name "Reverso"
  desc "Text translation application"
  homepage "https://context.reverso.net/translation/windows-mac-app"

  livecheck do
    url "https://cdn.reverso.net/download/reverso/desktop/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Reverso.app"

  uninstall launchctl: "com.softissimo.ReversoContext.Auto-Launcher-Reverso",
            quit:      [
              "com.softissimo.ReversoContext.Auto-Launcher-Reverso",
              "com.softissimo.ReversoContext.macosapp",
              "com.softissimo.ReversoContext.macosapp.helper",
              "com.softissimo.ReversoContext.Reverso-Quick-Search",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.softissimo.ReversoContext.*",
    "~/Library/Application Scripts/DDF2GQLETS.com.softissimo.ReversoExchange",
    "~/Library/Application Scripts/group.com.softissimo.ReversoExchange",
    "~/Library/Caches/com.softissimo.ReversoContext.macosapp",
    "~/Library/Caches/com.softissimo.ReversoContext.Reverso-Quick-Search",
    "~/Library/Containers/com.softissimo.ReversoContext.*",
    "~/Library/Group Containers/DDF2GQLETS.com.softissimo.ReversoExchange",
    "~/Library/Group Containers/group.com.softissimo.ReversoExchange",
    "~/Library/HTTPStorages/com.softissimo.ReversoContext.macosapp*",
    "~/Library/Preferences/com.softissimo.ReversoContext.macosapp.plist",
    "~/Library/Preferences/com.softissimo.ReversoContext.Reverso-Quick-Search.plist",
    "~/Library/WebKit/com.softissimo.ReversoContext.macosapp",
    "~/Library/WebKit/com.softissimo.ReversoContext.Reverso-Quick-Search",
  ]
end
