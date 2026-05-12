cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.4.5"
  sha256 arm:   "45b35a72b9f78430aed1c973cd4327fd86fe9ea83410d3dd77bf7417b9d71f6b",
         intel: "5a6eacdeb47eee28031c66ed78452e8d03c6dead8efe293931fc022ca8340847"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.zip"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Spectrolite.app"

  zap trash: [
    "~/Library/Application Support/spectrolite",
    "~/Library/Logs/Spectrolite",
    "~/Library/Preferences/com.electron.spectrolite.plist",
    "~/Library/Saved Application State/com.electron.spectrolite.savedState",
  ]
end
