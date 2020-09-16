cask "syncroom" do
  version "1.0.1"
  sha256 "a2686011622ef24ccaf3c10bf5a01eccbc59abc13845417138ac58bed261b38d"

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
