cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.41.0"
  sha256 arm:   "7f77a98890df555d9937049509d836fce752319da219eefdc70351814cc2c1db",
         intel: "24e4044c081a6262cc09f826d5116c14b41407e070e8c5279e9150a9fac5ee34"

  url "https://download.lbkrs.com/longbridge-desktop/prod/longbridge-pro-#{version}-mac-#{arch}.dmg"
  name "Longbridge Pro"
  desc "Stock trading platform"
  homepage "https://longbridge.com/"

  livecheck do
    url "https://download.wbrks.com/longbridge-desktop/prod/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Longbridge Pro.app"

  uninstall quit: "global.longbridge.app.desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/global.longbridge.app.desktop.sfl*",
    "~/Library/Application Support/Longbridge Pro",
    "~/Library/Caches/global.longbridge.app.desktop",
    "~/Library/Caches/global.longbridge.app.desktop.ShipIt",
    "~/Library/HTTPStorages/global.longbridge.app.desktop",
    "~/Library/Logs/Longbridge Pro",
    "~/Library/Preferences/global.longbridge.app.desktop.plist",
  ]
end
