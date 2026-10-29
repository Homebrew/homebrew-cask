cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.21"
  sha256 arm:   "b966a77fc0c9c107b1016718f8aaebf20266a628a188d9c7fba0f810207a430b",
         intel: "d0a29d49686d7d762e518e7b30a1bc00c95877f91e3034e5d05f798722f892cd"

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
