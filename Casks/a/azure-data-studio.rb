cask "azure-data-studio" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.51.1"
  sha256 arm:   "652a5c1159c4210848658648b86afaa9266a4171486575a734472e2c02b01f80",
         intel: "152198560aae7ddac39348b3894a1ab24fcd11132dc2d0790a8fab9fefb80b40"

  url "https://azuredatastudio-update.azurewebsites.net/#{version}/#{arch}/stable",
      verified: "azuredatastudio-update.azurewebsites.net/"
  name "Azure Data Studio"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  livecheck do
    url "https://azuredatastudio-update.azurewebsites.net/api/update/#{arch}/stable/VERSION"
    strategy :json do |json|
      json["productVersion"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Azure Data Studio.app"
  binary "#{appdir}/Azure Data Studio.app/Contents/Resources/app/bin/code", target: "azuredatastudio"

  zap trash: [
    "~/Library/Application Support/azuredatastudio",
    "~/Library/Preferences/com.azuredatastudio.oss.helper.plist",
    "~/Library/Preferences/com.azuredatastudio.oss.plist",
    "~/Library/Saved Application State/com.azuredatastudio.oss.savedState",
  ]
end
