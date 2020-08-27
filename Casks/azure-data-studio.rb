cask "azure-data-studio" do
  version "1.21.0,2413919f186f780f0193d047da3d90bb3c1e9bf6"
  sha256 "dedc082fd34ffe1c1bb9ddd7a830aeb08df63138935b8f947e9af6774cfe24af"

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
