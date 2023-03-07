cask "reverso" do
  version "2.8.0,419"
  sha256 "e1914844c8c332f5910b9092e667f6ef479a155ada28a7818ffc2760d8c4f91c"

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
