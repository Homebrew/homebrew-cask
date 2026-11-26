cask "hotkeyclash" do
  version "0.9.5"
  sha256 "a1f92f2d8afbe2ba08c096e1a06c55e7dc1153a49eabe0a55070764cf4c20a32"

  url "https://github.com/Wunderlandmedia/HotkeyClash/releases/download/v#{version}/HotkeyClash-#{version}.dmg"
  name "HotkeyClash"
  desc "Keyboard shortcut conflict detector"
  homepage "https://hotkeyclash.com/"

  depends_on macos: :sonoma

  app "HotkeyClash.app"

  uninstall quit: "com.hotkeyclash.app"

  zap trash: "~/Library/Preferences/com.hotkeyclash.app.plist"
end
