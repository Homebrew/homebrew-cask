cask "azure-data-studio" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.42.0"
  sha256 arm:   "ae19ea9baa7b0ff1a98c261e8d2ab2f290330f1823107ee6ec6dc2240bb39b47",
         intel: "e51361bd6fe3e2048ecffda0fd00dc39135e16188b76cd4eff33a29d29107244"

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
