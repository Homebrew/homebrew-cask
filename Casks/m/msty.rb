cask "msty" do
  arch arm: "arm64", intel: "x64"
  version "1.9.2"
  sha256 :no_check

  url "https://assets.msty.app/prod/latest/mac/Msty_#{arch}.dmg"
  name "Msty"
  desc "Run LLMs locally"
  homepage "https://msty.app/"

  deprecate! date: "2025-11-14",
             because: "is being replaced by Msty Studio. Users are recommended to export their data and migrate to the new app", replacement_cask: "mstystudio"

  auto_updates true

  app "Msty.app"

  uninstall quit: "app.msty.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.msty.app.sfl*",
    "~/Library/Application Support/Msty",
    "~/Library/Logs/Msty",
    "~/Library/Preferences/app.msty.app.plist",
    "~/Library/Saved Application State/app.msty.app.savedState",
  ]
end
