cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.37.1"
  sha256 arm:   "2344ced0003f4be70c9bf3200467403bcb074372c44979c86b24dff294adc1ed",
         intel: "61b8780896a01c2b8c0dac2e1347cfbc79db205c775dc82fbd5fe141bdaaa855"

  url "https://download.lbkrs.com/longbridge-desktop/prod/longbridge-pro-#{version}-mac-#{arch}.dmg",
      verified: "download.lbkrs.com/longbridge-desktop/prod/"
  name "Longbridge Pro"
  desc "Stock trading platform"
  homepage "https://longbridge.com/"

  livecheck do
    url "https://download.wbrks.com/longbridge-desktop/prod/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Longbridge Pro.app"

  zap trash: [
    "~/Library/Application Support/Longbridge Pro",
    "~/Library/Caches/global.longbridge.app.desktop",
    "~/Library/Caches/global.longbridge.app.desktop.ShipIt",
    "~/Library/HTTPStorages/global.longbridge.app.desktop",
    "~/Library/Logs/Longbridge Pro",
    "~/Library/Preferences/global.longbridge.app.desktop.plist",
  ]
end
