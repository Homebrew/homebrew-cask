cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "5984fbd7bbeb3950dc3bbd146a7337b126d2cbd24c430aa894b81452bf3504e5",
         intel: "346a851f124265170d938c1d878e6f085267ed69e4982dee93d881ec98a91e98"

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
