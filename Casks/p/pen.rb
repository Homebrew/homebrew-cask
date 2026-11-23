cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.25"
  sha256 arm:   "23e4bf4c3d31ec870ef835343d9b3f2dadc91a972102258fe0a5abd84a742334",
         intel: "c1d4f934dc538037cdf3fe214f1a8eaead5b9d4b1408d9442a6fd9f3eb58ccf7"

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
