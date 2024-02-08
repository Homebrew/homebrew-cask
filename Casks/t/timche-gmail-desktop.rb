cask "timche-gmail-desktop" do
  version "2.25.3"
  sha256 "8c5a8c4e651d7c328f3e7947e2b1ccc437245840ef33ea3d3f4b45fe7b82dc2e"

  url "https://github.com/timche/gmail-desktop/releases/download/v#{version}/gmail-desktop-#{version}-mac.dmg"
  name "Gmail Desktop"
  desc "Unofficial Gmail desktop app"
  homepage "https://github.com/timche/gmail-desktop"

  app "Gmail Desktop.app"

  zap trash: [
    "~/Library/Application Support/Gmail Desktop",
    "~/Library/Caches/io.cheung.gmail-desktop",
    "~/Library/Caches/io.cheung.gmail-desktop.ShipIt",
    "~/Library/Logs/Gmail Desktop",
    "~/Library/Preferences/io.cheung.gmail-desktop.plist",
    "~/Library/Saved Application State/io.cheung.gmail-desktop.savedState",
    "~/Library/WebKit/io.cheung.gmail-desktop",
  ]
end
