cask "superhuman" do
  arch arm: "-arm64"

  version "25.1.25"
  sha256 arm:   "0a22bbfc1b186c9bdb0ddd5a551e549ccf18df5181ad6b0c2c845028098a7762",
         intel: "ad642629b5cb4cf1af8eca9c94343e26e9c061bde21a71dd03b7c08819f50903"

  url "https://storage.googleapis.com/download.superhuman.com/supertron-update/Superhuman-#{version}#{arch}-latest-mac.zip",
      verified: "storage.googleapis.com/download.superhuman.com/"
  name "Superhuman"
  desc "Email client"
  homepage "https://superhuman.com/"

  livecheck do
    url "https://storage.googleapis.com/download.superhuman.com/supertron-update/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Superhuman.app"

  zap trash: [
    "~/Library/Application Support/Superhuman",
    "~/Library/Caches/com.superhuman.electron",
    "~/Library/Caches/com.superhuman.electron.helper",
    "~/Library/Caches/com.superhuman.electron.ShipIt",
    "~/Library/Caches/Superhuman",
    "~/Library/Logs/Superhuman",
    "~/Library/Preferences/com.superhuman.electron.helper.plist",
    "~/Library/Preferences/com.superhuman.electron.plist",
    "~/Library/Preferences/com.superhuman.mail.plist",
    "~/Library/Saved Application State/com.superhuman.electron.savedState",
  ]
end
