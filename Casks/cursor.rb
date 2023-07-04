cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.40"
  sha256 arm:   "a24ebea62b26158173630ec2b537f255356a535a60cfef0e39f74165f7a1a3c8",
         intel: "fbfcd94b574afd3a4d01bc2b5d0038ff9ab60b9adf356b9fc31b8fbb8f2a9a30"

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
