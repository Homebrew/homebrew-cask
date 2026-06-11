cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.16"
  sha256 arm:   "4eaa63192384a8769030c7a406d61220bf1d7d796a4a8d09723f7e91ad8d2bfa",
         intel: "ea8fab426e8e1e7ee7103ea1e793cb42a29a83b6c4c599229a345294ea68c281"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
