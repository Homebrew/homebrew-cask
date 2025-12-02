cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.1.4"
  sha256 arm:   "9ecdc681244fad04acbaca8b8f5d4186643bbf228619a8d1b2588978204ee79f",
         intel: "402e9c62b574118913bc14f145bac30053585394c505aaa8a0a3c0e9ef66adc9"

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
