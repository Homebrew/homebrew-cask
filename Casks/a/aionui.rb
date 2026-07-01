cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.27"
  sha256 arm:   "7a1cbd7183379ce08403c4772cbba3f38136ee9813f14325e349a9aa5e220f1c",
         intel: "f61047f8ec150a33ba2c5e61595d52c4d5695e65e4c6cfc0e726d836ed1cb20a"

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
