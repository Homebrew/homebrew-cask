cask "superhuman" do
  arch arm: "-arm64"

  version "25.1.12"
  sha256 arm:   "0aa4a10cae3b425131bfca01f666ce681038752abd0028ec112f9d17844ea8c7",
         intel: "0cc71e8e6fc13e947eb5fa165af7597d25f9c6c70091980a2487d4919a18ce60"

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
