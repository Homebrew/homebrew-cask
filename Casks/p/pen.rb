cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.27"
  sha256 arm:   "d809f5bc3ad43b55cb98a24ee7e88e20054be357ed525859a51d3930fc436e43",
         intel: "be9db55dd2e718e1f0d4b5568545525a46e52c08ac4cacb639770f9ca49baaa5"

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
