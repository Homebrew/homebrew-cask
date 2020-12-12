cask "azure-data-studio" do
  version "1.25.0,8c6bd8c857592c14afbb589a7d307baec1f5b5ed"
  sha256 "87777adcd5adb1846751e266df18bc05ea1609faacb2b9cf3a5add427435698c"

  url "https://sqlopsbuilds.azureedge.net/stable/#{version.after_comma}/azuredatastudio-macos-#{version.before_comma}.zip",
      verified: "sqlopsbuilds.azureedge.net/stable/"
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
