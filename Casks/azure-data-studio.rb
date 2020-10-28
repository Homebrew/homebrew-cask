cask "azure-data-studio" do
  version "1.23.0,d296b6397e0acfddc57e9085e736e084969cdaeb"
  sha256 "2d28d83a16aa64c0501f2187be9837ce919c1a5d3c1e407b338cd3394d905205"

  # sqlopsbuilds.azureedge.net/stable was verified as official when first introduced to the cask
  url "https://sqlopsbuilds.azureedge.net/stable/#{version.after_comma}/azuredatastudio-macos-#{version.before_comma}.zip"
  appcast "https://github.com/Microsoft/azuredatastudio/releases.atom"
  name "Azure Data Studio"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  auto_updates true

  app "Azure Data Studio.app"
  binary "#{appdir}/Azure Data Studio.app/Contents/Resources/app/bin/code", target: "azuredatastudio"

  zap trash: [
    "~/Library/Application Support/azuredatastudio",
    "~/Library/Preferences/com.azuredatastudio.oss.helper.plist",
    "~/Library/Preferences/com.azuredatastudio.oss.plist",
    "~/Library/Saved Application State/com.azuredatastudio.oss.savedState",
  ]
end
