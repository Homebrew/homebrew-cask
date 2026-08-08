cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.52"
  sha256 arm:   "69ac50f5fba5e4061527fa95b42b9c41d56244b2a0771a89cbb7f282412816d9",
         intel: "a70250149de3c70bc8c07792855a612949ef71a838f6b8aaef7a70d3abc228f8"

  url "https://static.aionui.com/releases/#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://www.aionui.com/"

  livecheck do
    url "https://static.aionui.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Logs/AionUi",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
