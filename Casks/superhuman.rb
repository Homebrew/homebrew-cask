cask "superhuman" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "12.1.6"

  if Hardware::CPU.intel?
    sha256 "0338447d733fc3d666556dd26d9e3ee1f664b6a7e8d7a1f36ba2a2e7495a8d3c"
  else
    sha256 "5fdd0502e50ba2f1458d75106feab07d6f815990f369a9d4ce4189f6f7ac3fc5"
  end

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
