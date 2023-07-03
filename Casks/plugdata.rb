cask "plugdata" do
  version "0.7.1"
  sha256 "fb294db389790196ca2c5a7a096a00bae5e77a4da3425f2d4e83d989f7ec909e"

  url "https://github.com/timothyschoen/PlugData/releases/download/v#{version}/plugdata-macOS-Universal.pkg"
  name "PlugData"
  desc "Plugin wrapper for PureData"
  homepage "https://github.com/timothyschoen/PlugData"

  auto_updates true

  pkg "plugdata-macOS-Universal.pkg"

  uninstall pkgutil: [
    "com.plugdata.app.pkg.plugdata",
    "com.plugdata.au.pkg.plugdata",
    "com.plugdata.clap.pkg.plugdata",
    "com.plugdata.lv2.pkg.plugdata",
    "com.plugdata.vst3.pkg.plugdata",
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
