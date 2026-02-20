cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "1de7f2b0c655950fb2ad582ad357286f6dfd131bd8df25d875f59ea22413ef0b",
         intel: "a83e66480d5937d908c729e0bc469ee13b74e4706c2eff9fe833d25971e8b3f1"

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
