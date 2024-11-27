cask "plugdata@nightly" do
  version :latest
  sha256 :no_check

  url "https://storage.googleapis.com/plugdata-nightly/plugdata-macOS-Universal.pkg",
      verified: "storage.googleapis.com/plugdata-nightly/"
  name "PlugData"
  desc "Plugin wrapper for PureData"
  homepage "https://plugdata.org/"

  conflicts_with cask: "plugdata"

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
    "~/Library/Caches/com.PlugData.PlugDataStandalone",
    "~/Library/Caches/PlugData",
    "~/Library/HTTPStorages/com.PlugData.PlugDataStandalone",
    "~/Library/PlugData",
    "~/Library/Preferences/com.PlugData.PlugDataStandalone.plist",
  ]
end
