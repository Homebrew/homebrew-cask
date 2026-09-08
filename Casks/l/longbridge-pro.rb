cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.38.16"
  sha256 arm:   "e6f7b6d293e9c91430a2a200e0e2d75c7e7131d0a5fbccdca4d7376b9f830e8a",
         intel: "527cc8d2183ddbfa99307e1b0a36513820ec7c993c94ba6677d862adf3609e37"

  url "https://download.lbkrs.com/longbridge-desktop/prod/longbridge-pro-#{version}-mac-#{arch}.dmg"
  name "Longbridge Pro"
  desc "Stock trading platform"
  homepage "https://longbridge.com/"

  livecheck do
    url "https://download.wbrks.com/longbridge-desktop/prod/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Longbridge Pro.app"

  uninstall quit: "global.longbridge.app.desktop"

  zap trash: [
    "~/Library/Application Support/Longbridge Pro",
    "~/Library/Caches/global.longbridge.app.desktop",
    "~/Library/Caches/global.longbridge.app.desktop.ShipIt",
    "~/Library/HTTPStorages/global.longbridge.app.desktop",
    "~/Library/Logs/Longbridge Pro",
    "~/Library/Preferences/global.longbridge.app.desktop.plist",
  ]
end
