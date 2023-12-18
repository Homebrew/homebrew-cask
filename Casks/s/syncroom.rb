cask "syncroom" do
  version "1.6.4"
  sha256 "5ee266adb422011fdb35119ba33be715a8355224084a3973407b1d50a8877859"

  url "https://syncroom.yamaha.com/play/dl/app/SYNCROOM-MULTI-mac-#{version}.zip"
  name "SYNCROOM"
  desc "Online remote concert service"
  homepage "https://syncroom.yamaha.com/"

  livecheck do
    url "https://syncroom.yamaha.com/play/dl/"
    regex(%r{href=.*?/SYNCROOM-MULTI-mac-(\d+(?:\.\d+)+)\.zip}i)
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
