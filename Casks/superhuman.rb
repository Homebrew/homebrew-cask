cask "superhuman" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "11.0.34"
  sha256 :no_check

  url "https://download.superhuman.com/Superhuman#{arch}.dmg"
  name "Superhuman"
  desc "Email client"
  homepage "https://superhuman.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Superhuman.app"

  zap trash: [
    "~/Library/Application Support/Superhuman",
    "~/Library/Caches/com.superhuman.electron",
    "~/Library/Caches/com.superhuman.electron.helper",
    "~/Library/Caches/com.superhuman.electron.ShipIt",
    "~/Library/Caches/Superhuman",
    "~/Library/Logs/Superhuman",
    "~/Library/Preferences/com.superhuman.electron.plist",
    "~/Library/Preferences/com.superhuman.electron.helper.plist",
    "~/Library/Preferences/com.superhuman.mail.plist",
  ]
end
