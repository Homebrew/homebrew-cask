cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.38.15"
  sha256 arm:   "b278804ce6562810a8daf61dfce52679d6bc3f6bad041cb70f2612939c3dc909",
         intel: "5eba1ce80d3be9ae0ddc9ff20874e4236d47d3450f381457e966ba030ae35db8"

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
