cask "cleanboard" do
  version "2.4.0"
  sha256 "223e2b4d15aee1184e9782c6694955958e77e20ce477697ea99ef75871cbd30f"

  url "https://github.com/tompodab/cleanboard/releases/download/#{version}/CleanBoard-#{version}-Installer.dmg"
  name "CleanBoard"
  desc "Lightweight app that removes formatting from copied text by hitting copy twice"
  homepage "https://cleanboard.app/"

  app "CleanBoard.app"

  zap trash: [
    "~/Library/Application Support/CleanBoard",
    "~/Library/Caches/com.cleanboard.app",
    "~/Library/Preferences/com.cleanboard.app.plist",
  ]
end
