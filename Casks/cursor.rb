cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.22"
  sha256 arm:   "4989d854e4bc1677e165e73094606a6b0bfd344a21639724f4a9a3fa188b09b8",
         intel: "06bfb1dca5f89ad6c7ae916aa8dac3c464efc2cacaa93cb0583a5a2ce0fc8aa8"

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
