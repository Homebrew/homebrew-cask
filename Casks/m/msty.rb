cask "msty" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 :no_check

  url "https://assets.msty.app/prod/latest/mac/Msty_#{arch}.dmg"
  name "Msty"
  desc "Run LLMs locally"
  homepage "https://msty.app/"

  livecheck do
    url "https://assets.msty.app/prod/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
