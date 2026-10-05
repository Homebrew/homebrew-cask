cask "fore-studio-vitals" do
  version "1.3.4"
  sha256 "d39a386e29f95fba9b14cbfbe676817027ba13d0a782229e1534de35447d664f"

  url "https://statics.fore.studio/vitals/downloads/Vitals-#{version}.dmg"
  name "Vitals"
  desc "System monitor with per-app metrics and history"
  homepage "https://vitalsmac.com/"

  livecheck do
    url "https://statics.fore.studio/vitals/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "vitals"
  depends_on macos: :sequoia

  app "Vitals.app"

  uninstall quit: "com.forestudio.Vitals"

  zap trash: [
    "~/Library/Application Support/Vitals",
    "~/Library/Preferences/com.forestudio.Vitals.plist",
  ]
end
