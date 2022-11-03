cask "plugdata" do
  version "0.6.2"
  sha256 "3b18da8fa9fcd155efeb78e1f192acc6f9b74a62040e901d19aa34d6dda8218f"

  url "https://github.com/timothyschoen/PlugData/releases/download/v#{version}/PlugData-MacOS-Universal.zip"
  name "PlugData"
  desc "Plugin wrapper for PureData"
  homepage "https://github.com/timothyschoen/PlugData"

  auto_updates true

  pkg "PlugData-MacOS-Universal.pkg"

  uninstall pkgutil: [
    "com.Octagon.app.pkg.PlugData",
    "com.Octagon.au.pkg.PlugData",
    "com.Octagon.lv2.pkg.PlugData",
    "com.Octagon.vst3.pkg.PlugData",
  ]

  zap trash: [
    "~/Library/Application Support/PlugData.settings",
    "~/Library/Caches/PlugData",
    "~/Library/Caches/com.PlugData.PlugDataStandalone",
    "~/Library/HTTPStorages/com.PlugData.PlugDataStandalone",
    "~/Library/PlugData",
    "~/Library/Preferences/com.PlugData.PlugDataStandalone.plist",
  ]
end
