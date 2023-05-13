cask "azure-data-studio" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.43.0"
  sha256 arm:   "f23d5246068c6af0e00a7979c7aba5a7c07fc81c632b58c37d2615f1ae3b7fe3",
         intel: "98b97bf52148f79c7f0e6cf4b9f53f1eaecfaf0c149704784e0d3cd0e3408654"

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
