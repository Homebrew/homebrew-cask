cask "azure-data-studio" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.48.0"
  sha256 arm:   "33f21cf08473da68ccdbe12e401dccf70ef3612b420a379cc0cbbd0d2694caaa",
         intel: "f4bc5044c080440bf7b96508bf7aa98d1ce846037956a89a07b8fdc76f43aead"

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
  depends_on macos: ">= :high_sierra"

  app "Azure Data Studio.app"
  binary "#{appdir}/Azure Data Studio.app/Contents/Resources/app/bin/code", target: "azuredatastudio"

  zap trash: [
    "~/Library/Application Support/azuredatastudio",
    "~/Library/Preferences/com.azuredatastudio.oss.helper.plist",
    "~/Library/Preferences/com.azuredatastudio.oss.plist",
    "~/Library/Saved Application State/com.azuredatastudio.oss.savedState",
  ]
end
