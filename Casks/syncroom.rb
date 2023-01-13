cask "syncroom" do
  version "1.5.3"
  sha256 "3fd96720f4060eb5675fdac7f8b72e101fed7f166be9245cba09e8388f6dafaa"

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
