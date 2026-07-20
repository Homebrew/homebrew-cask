cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.75.0"
  sha256 arm:   "77c76c2f115f60137880e3be2d4bf1ecc748d1485e17df1d4096921b1fcb9b3c",
         intel: "dbc13742d21dd9e526a56bc2d586f03f4e50c6b69432589649fac32e26140f99"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
