cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "db792311b596efedeacb6ef7b4b57771b992de49c37c7f94f9e83f22ddd06929",
         intel: "1c2d5bd03ed381e72912bb14e676b25dd7bbcf71708342b0646132a6c45b69fb"

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
