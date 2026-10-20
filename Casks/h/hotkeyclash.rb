cask "hotkeyclash" do
  version "0.9.2"
  sha256 "3dbcdccc6f2de328f6d0ea37e8d0b4e98e18a462f10f8a8b59e7c5a1de5f0f66"

  url "https://github.com/Wunderlandmedia/HotkeyClash/releases/download/v#{version}/HotkeyClash-#{version}.dmg"
  name "HotkeyClash"
  desc "Keyboard shortcut conflict detector"
  homepage "https://hotkeyclash.com/"

  depends_on macos: :sonoma

  app "HotkeyClash.app"

  uninstall quit: "com.hotkeyclash.app"

  zap trash: "~/Library/Preferences/com.hotkeyclash.app.plist"
end
