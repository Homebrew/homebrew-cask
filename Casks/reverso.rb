cask "reverso" do
  version "2.5.0,329"
  sha256 "d2ec548f6e53c3beabced29575cdc87cd81c9bd260fe482958710a0bd909bcd5"

  url "https://cdn.reverso.net/download/reverso/desktop/macos/distrib/Reverso_#{version.csv.first}.#{version.csv.second}.zip"
  name "Reverso"
  desc "Text translation application"
  homepage "https://context.reverso.net/translation/windows-mac-app"

  livecheck do
    url "https://cdn.reverso.net/download/reverso/desktop/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Reverso.app"

  uninstall quit: "com.softissimo.ReversoContext.macosapp"

  zap trash: [
    "~/Library/Application Scripts/group.com.softissimo.ReversoExchange",
    "~/Library/Application Scripts/com.softissimo.ReversoContext.macosapp.Reverso-Translate-in-Context",
    "~/Library/Application Scripts/com.softissimo.ReversoContext.Auto-Launcher-Reverso",
    "~/Library/Application Scripts/com.softissimo.ReversoContext.macosapp.helper",
    "~/Library/Caches/com.softissimo.ReversoContext.macosapp",
    "~/Library/Containers/com.softissimo.ReversoContext.macosapp.Reverso-Translate-in-Context",
    "~/Library/Containers/com.softissimo.ReversoContext.Auto-Launcher-Reverso",
    "~/Library/Containers/com.softissimo.ReversoContext.macosapp.helper",
    "~/Library/Group Containers/group.com.softissimo.ReversoExchange",
    "~/Library/Preferences/com.softissimo.ReversoContext.macosapp.plist",
  ]
end
