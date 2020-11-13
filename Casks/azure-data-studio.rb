cask "azure-data-studio" do
  version "1.24.0,eb3c0f5d9df86b9490606aab7fffaa253b0aca4d"
  sha256 "5f435fac4997642b20b063a422c6d219073bc552ff4a1eb3fd4fa079f0a9589f"

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
