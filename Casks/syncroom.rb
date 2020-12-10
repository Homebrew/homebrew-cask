cask "syncroom" do
  version "1.0.3"
  sha256 "8c296a881ac786d815f7c70775081c2b38ab4e26b562bb4592c7ee451b72c92e"

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
