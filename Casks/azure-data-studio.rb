cask "azure-data-studio" do
  version "1.22.1,1b5c54dd8c6eb03bf7ed1e04889d9f41de0523b3"
  sha256 "1d181ac4d9b00858a3712770e1b46d61ec19e47c7cb99384b71b434dc720a9fc"

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
