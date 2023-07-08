cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.44"
  sha256 arm:   "e5ec7b5d0b647d8cc9dca102f6f19d9c9dcbdd0878ce425d12e083f0cffc3aaf",
         intel: "3ca2c32e8ec8775207c1a7b8c120e51f5c39bd1a54f5459879a3c7d106b04238"

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
