cask "azure-data-studio" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.40.1"
  sha256 arm:   "57accd53fac7063c9c5e5543fd0fd82488be1077ec8df0bd46c10552502f027e",
         intel: "f922da3606e7f62ab971cf4949c9ddcb3727692ca6d2efbce2657d48095c4aef"

  url "https://azuredatastudio-update.azurewebsites.net/#{version}/#{arch}/stable",
      verified: "azuredatastudio-update.azurewebsites.net/"
  name "Azure Data Studio"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  livecheck do
    url "https://azuredatastudio-update.azurewebsites.net/api/update/#{arch}/stable/VERSION"
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
