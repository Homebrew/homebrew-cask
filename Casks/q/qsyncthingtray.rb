cask "qsyncthingtray" do
  version "0.5.8"
  sha256 "1a8bf6975d5f9b1952edf1a070e35338d2c0f6ff9939e3dcda742280baa645b1"

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  name "QSyncthingTray"
  desc "Tray app for Syncthing"
  homepage "https://github.com/sieren/QSyncthingTray"

  deprecate! date: "2024-07-28", because: :unmaintained

  app "QSyncthingTray.app"

  zap trash: "~/Library/Preferences/com.sieren.QSyncthingTray.plist"

  caveats do
    requires_rosetta
  end
end
