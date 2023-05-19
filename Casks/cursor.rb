cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.17"
  sha256 arm:   "a5d9b0801634b74dd5c1935a3c4e0b69ef5b09c8a635b5e6c44517f98727613b",
         intel: "f7ada6b5b0cf45593aaaf703246043b0b60ac6bd9286cb6b308a54a352dafedd"

  url "https://download.todesktop.com/230313mzl4w4u92/Cursor%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/230313mzl4w4u92"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.so/"

  livecheck do
    url "https://download.todesktop.com/230313mzl4w4u92/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Cursor.app"

  zap trash: [
    "~/cursor-tutor",
    "~/Library/Application Support/Cursor",
    "~/Library/Logs/Cursor",
    "~/Library/Preferences/com.todesktop.*",
    "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
  ]
end
