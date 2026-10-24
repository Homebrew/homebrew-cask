cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.20"
  sha256 arm:   "acea8ed21e442720364506db230e319e35a7dc6a3e0af7463c2025a3dafbf24c",
         intel: "3259823c592d812a24e279be42537b26099ae43d7f3ec7ddc90407689bffaa74"

  url "https://github.com/highagency/pen-desktop-releases/releases/download/v#{version}/Pen-#{version}-mac-#{arch}.dmg"
  name "Pen"
  desc "Agentic design canvas"
  homepage "https://pen.dev/"

  auto_updates true
  depends_on macos: :ventura

  app "Pen.app"

  zap trash: [
    "~/.pencil",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.pencil.desktop.sfl*",
    "~/Library/Application Support/Pen",
    "~/Library/Caches/pen-updater",
    "~/Library/Logs/Pen",
    "~/Library/Preferences/dev.pencil.desktop.plist",
  ]
end
