cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.14"
  sha256 arm:   "8c23a2a3cf4145a422661a99d60326a98aabde2c3bfa062e919d1a7cbeedddf7",
         intel: "7dec3f6f12e8f34af9b2620b6077e513403c9b7296dd42d07a0a0338cb7e3d66"

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
