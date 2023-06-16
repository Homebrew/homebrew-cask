cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.32"
  sha256 arm:   "1060a21ba87257eda72e50fdf8430fe0c488eaeab1afe279e94b753e1d2e7ca5",
         intel: "ba57a492dc8e6af836d51cad35d32ac6c7cf366f1f5bbf00ab048d426f1751ef"

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
