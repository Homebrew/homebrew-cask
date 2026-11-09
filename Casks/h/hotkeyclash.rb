cask "hotkeyclash" do
  version "0.9.3"
  sha256 "a5bb6f5677cab25c473b4b2b4051fbfac9d95f540ca7096eaf6de48094382696"

  url "https://github.com/Wunderlandmedia/HotkeyClash/releases/download/v#{version}/HotkeyClash-#{version}.dmg"
  name "HotkeyClash"
  desc "Keyboard shortcut conflict detector"
  homepage "https://hotkeyclash.com/"

  depends_on macos: :sonoma

  app "HotkeyClash.app"

  uninstall quit: "com.hotkeyclash.app"

  zap trash: "~/Library/Preferences/com.hotkeyclash.app.plist"
end
