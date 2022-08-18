cask "reverso" do
  version "2.4.0,327"
  sha256 "90c1f36815e1ecfb436e27e77eadcd3d71f9bf771c4ae22a584c7170bbe0799d"

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
