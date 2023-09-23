cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.11.5"
  sha256 arm:   "dabd4aab35b38b18384df1fbdf2dd0bfcb829546b9feaa41da32e33799b92c72",
         intel: "ff7d081bc4dae4be34260accbd5afba47f13e856a6b133ecf23cbc099e8389dc"

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
