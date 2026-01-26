cask "azure-data-studio" do
  arch arm: "-arm64"

  version "1.52.0"
  sha256 arm:   "7087ae733c556e10ddacb14b550c1e86fea8784c11006df2f4dbd3766c8739de",
         intel: "ca3951d85525775b242bec253fec1e97f384b2af2468a0429feccf04f5adbb93"

  url "https://download.microsoft.com/download/6b2bfeac-9c1b-4182-9a2f-ce86ff8cc371/azuredatastudio-macos#{arch}-#{version}.zip"
  name "Azure Data Studio"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  # https://learn.microsoft.com/en-us/azure-data-studio/whats-happening-azure-data-studio
  disable! date: "2026-02-28", because: :discontinued

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
