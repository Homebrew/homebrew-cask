cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "fa5ad1ddb8961145afa4da0e566708d8f9d3c33b254f2fe47bf13e23e3219e5e",
         intel: "ab6e5714b4bae4fc82f8aab0d9f36d16c78887a02cd1c14633ed62bc2b7de27a"

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
