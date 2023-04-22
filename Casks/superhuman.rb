cask "superhuman" do
  arch arm: "-arm64"

  version "21.0.28"
  sha256 arm:   "3f0e3c18c4018ea5a7f9f7991e71a3ff447c1545df228cc9dc18535421f32ed6",
         intel: "a7a5fa8db91f151e0147d0569224f4eab5f77f17593f6c1e62d36c786433405d"

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
    "~/Library/Caches/Superhuman",
    "~/Library/Caches/com.superhuman.electron",
    "~/Library/Caches/com.superhuman.electron.ShipIt",
    "~/Library/Caches/com.superhuman.electron.helper",
    "~/Library/Logs/Superhuman",
    "~/Library/Preferences/com.superhuman.electron.helper.plist",
    "~/Library/Preferences/com.superhuman.electron.plist",
    "~/Library/Preferences/com.superhuman.mail.plist",
    "~/Library/Saved Application State/com.superhuman.electron.savedState",
  ]
end
