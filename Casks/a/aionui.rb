cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.40"
  sha256 arm:   "119d5e4ed18ebb9c4408cd3228363b474b38fe2e20aa09fe496fee3e6d5138ea",
         intel: "1cef58fe87a2fbd1028378a6a4a2038778db31ab1933ec16d05ea73cc87a24ae"

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
