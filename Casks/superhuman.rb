cask "superhuman" do
  version "11.0.13"
  sha256 :no_check

  name "Superhuman"
  if Hardware::CPU.intel?
    url "https://download.superhuman.com/Superhuman.dmg"
  else
    url "https://download.superhuman.com/Superhuman-arm64.dmg"
  end
  desc "Email client"
  homepage "https://superhuman.com/"

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
