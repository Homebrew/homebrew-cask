cask "syncroom" do
  version "1.6.3"
  sha256 "fa2569caa2ae68de7239481d939ade95de8b7e4a4fb3876a102019ba1fe301d7"

  url "https://syncroom.yamaha.com/play/dl/app/SYNCROOM-MULTI-mac-#{version}.zip"
  name "SYNCROOM"
  desc "Online remote concert service: enjoy playing even if far away from each other"
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
