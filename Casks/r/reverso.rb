cask "reverso" do
  version "2.14.0,597"
  sha256 "1fd9c6ead733b3c6a6798f4ae569aae51a222aa74cc3235a0dcb4fe759a896c8"

  url "https://cdn.reverso.net/download/reverso/desktop/macos/distrib/Reverso_#{version.csv.first}.#{version.csv.second}.zip"
  name "Reverso"
  desc "Text translation application"
  homepage "https://context.reverso.net/translation/windows-mac-app"

  livecheck do
    url "https://cdn.reverso.net/download/reverso/desktop/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Reverso.app"

  uninstall quit: "com.softissimo.ReversoContext.macosapp"

  zap trash: [
    "~/Library/Application Scripts/com.softissimo.ReversoContext.*",
    "~/Library/Application Scripts/group.com.softissimo.ReversoExchange",
    "~/Library/Caches/com.softissimo.ReversoContext.macosapp",
    "~/Library/Containers/com.softissimo.ReversoContext.*",
    "~/Library/Group Containers/group.com.softissimo.ReversoExchange",
    "~/Library/Preferences/com.softissimo.ReversoContext.macosapp.plist",
  ]
end
