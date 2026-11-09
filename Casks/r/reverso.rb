cask "reverso" do
  version "2.17.2,710"
  sha256 "3aa90dadd43faa993a64a230449fc1d6aa6cfecc0551b822842ce043c7db77b6"

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
              "com.softissimo.ReversoContext.macosapp",
              "com.softissimo.ReversoContext.macosapp.helper",
              "com.softissimo.ReversoContext.Reverso-Quick-Search",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.softissimo.ReversoContext.*",
    "~/Library/Application Scripts/group.com.softissimo.ReversoExchange",
    "~/Library/Caches/com.softissimo.ReversoContext.macosapp",
    "~/Library/Containers/com.softissimo.ReversoContext.*",
    "~/Library/Group Containers/group.com.softissimo.ReversoExchange",
    "~/Library/Preferences/com.softissimo.ReversoContext.macosapp.plist",
  ]
end
