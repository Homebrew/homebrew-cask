cask "azure-data-studio" do
  version "1.39.1"
  sha256 "5e1a2e217d3a5d3696c0fb3138a4bcd24310216e2620d32265b72c47e686d264"

  url "https://azuredatastudio-update.azurewebsites.net/#{version}/darwin/stable",
      verified: "azuredatastudio-update.azurewebsites.net/"
  name "Azure Data Studio"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  livecheck do
    url "https://azuredatastudio-update.azurewebsites.net/api/update/darwin/stable/VERSION"
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)+)"/i)
  end

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
