cask "syncroom" do
  version "1.5.2"
  sha256 "78e9cd16f2484aecc1eb9d14084f04058bc15a4d2b4d1dd3e1b7b3028e897df8"

  url "https://syncroom.yamaha.com/play/dl/app/SYNCROOM-JP-mac-#{version}.zip"
  name "SYNCROOM"
  desc "Online remote concert service: enjoy playing even if far away from each other"
  homepage "https://syncroom.yamaha.com/"

  livecheck do
    url "https://syncroom.yamaha.com/play/dl/"
    regex(%r{href=.*?/SYNCROOM-JP-mac-(\d+(?:\.\d+)*)\.zip}i)
  end

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
