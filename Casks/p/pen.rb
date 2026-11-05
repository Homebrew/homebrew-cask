cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.22"
  sha256 arm:   "9fcbeacb577aeb45a83ccaee864f06d0d80c02856e598fb97776c880698048af",
         intel: "baeeb1de1d2ea482f056ce40443c9188d4c57a269159aa2ba3958417ae92d67f"

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
