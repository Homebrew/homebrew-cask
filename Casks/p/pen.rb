cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.24"
  sha256 arm:   "c07d299429d4d250f4e49a4e76a72634a9b2922408f225de3197200c4b55154c",
         intel: "80e3080b7c1da016d3044a1927ddb63ab3f71a9b95ca5ab6af35dd48deb3bb10"

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
