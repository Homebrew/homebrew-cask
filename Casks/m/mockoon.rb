cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "8.4.0"
  sha256 arm:   "fe6c084e70a3b019bb3de42bf365b50d2fc814c86beeacd964d02bef2b5ca105",
         intel: "6d20cee783237ee7b985994c5d2ee1f736c79b5b345b760806c0a895182d15d9"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
