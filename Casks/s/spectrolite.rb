cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "bfffc0c80294bd48026ff4cba62ae2dede0915796878c3ea0a6d54cf1c1ffaab",
         intel: "ac0132b686ac58d0f2ed4b08b56c6d441bda766c3ad34f260bfcc00721bd6458"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.zip"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Spectrolite.app"

  zap trash: [
    "~/Library/Application Support/spectrolite",
    "~/Library/Logs/Spectrolite",
    "~/Library/Preferences/com.electron.spectrolite.plist",
    "~/Library/Saved Application State/com.electron.spectrolite.savedState",
  ]
end
