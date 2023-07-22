cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "39bfba9e235d8afbd4d1ab102cf754bbcf4917067dc3b5c574d15ff60785dfa0",
         intel: "f6e2fe0fa467216ccff6c679bc1e9fb643aa57faf25f126a74e7b106d97c3f60"

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
