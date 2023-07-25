cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "525a822c5b5533ea1a7da4b2bb56d3a4b36363c5ce5268ffd1abb778e5a566b5",
         intel: "a8fd176e6fe7ef0a02e157ad19db85aae3df2e056d5d6b8bd01c0a7105f246f6"

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
