cask "superhuman" do
  arch arm: "-arm64"

  version "25.1.13"
  sha256 arm:   "28322662f942caf9cd71fd343cf7a86c1e55319c1284dd52e1b8c42db4199241",
         intel: "2a97f32021beb1cbf6f91de3e816ff4983939649b9deddfa60b5cfc1190c3e56"

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
