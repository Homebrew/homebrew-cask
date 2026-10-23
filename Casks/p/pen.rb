cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.19"
  sha256 arm:   "86c3911c5b7a180537367742638db6086a4b90de6bedb84eaec4558edc797395",
         intel: "2cab6d0c5ef6ef1fc889943fc76d6d89f7abc7237c97cec92b452e23045cd208"

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
