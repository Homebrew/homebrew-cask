cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "caeff7f7c66f2c1a8e1b667a2b5d4e5247cd70e22573d68b58419445ca502e79",
         intel: "e0b95de568b76fb4941093bc722b29f4f687c1c5e75b133e0e0240237c5e0d93"

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
