cask "plugdata" do
  version "0.6.1"
  sha256 "b39f902d375d52b58714f3f8c5c07abef688668bf2608a03f5372dc27532b1d7"

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
