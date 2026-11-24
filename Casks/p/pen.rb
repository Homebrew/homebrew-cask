cask "pen" do
  arch arm: "arm64", intel: "x64"

  version "1.2.26"
  sha256 arm:   "a2dd5412b61152c1cefeece364088156dac877172c8e65eb9069df1c2f73f827",
         intel: "65b95bc3c929aa21103e3f2d3e7c1e1a9bbf5ea8547b53a52767c03bc1595fa8"

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
