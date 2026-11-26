cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.41.1"
  sha256 arm:   "98b05e2b26ef3d753adbf2b59ece32cb5e6e123e9fe09f843b0bec4141eb894a",
         intel: "b06fff11a4a5c0dae6dd4b51bac7043205885fd8dcad78c0f0f466315a04e955"

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
