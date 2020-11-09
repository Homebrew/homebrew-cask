cask "syncroom" do
  version "1.0.2"
  sha256 "1713e61d222801f77c178c746ee9b1e65f0df92bf6e69055b7035ea8ce806cb2"

  url "https://syncroom.yamaha.com/play/dl/app/SYNCROOM-JP-mac-#{version}.zip"
  appcast "https://syncroom.yamaha.com/play/dl/"
  name "SYNCROOM"
  desc "Online remote concert service: enjoy playing even if far away from each other"
  homepage "https://syncroom.yamaha.com/"

  depends_on macos: ">= :mojave"

  pkg "SYNCROOM.pkg"

  uninstall pkgutil: [
    "jp.co.yamaha.ux.SYNCROOM.pkg",
    "jp.co.yamaha.ux.SYNCROOM-AU-BRIDGE.pkg",
  ]

  zap trash: [
    "~/Library/Caches/jp.co.yamaha.ux.SYNCROOM",
    "~/Library/Preferences/jp.co.yamaha.ux.syncroom.SYNCROOM.plist",
    "~/Library/Saved Application State/jp.co.yamaha.ux.SYNCROOM.savedState",
  ]
end
