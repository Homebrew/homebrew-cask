cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.23"
  sha256 arm:   "937bfc79a39b1b5eb01c4525cd8d22a33933b817210863b4e7fe25b7beb174a0",
         intel: "cf6875f4c4f0f18a3c3eb4fef6c28e52954e0e7885ff57187f886c2518ef3bf1"

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
