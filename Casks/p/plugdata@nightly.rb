cask "plugdata@nightly" do
  version "862326963a8133bd499f2bad5617f7af1fe408cd"
  sha256 :no_check

  url "https://glyphpress.com/plugdata/plugdata-macOS-Universal.pkg", 
  verified: "https://glyphpress.com/plugdata/"
  name "PlugData"
  desc "Plugin wrapper for PureData"
  homepage "https://plugdata.org/"

  conflicts_with cask: "plugdata"

  livecheck do
    url "https://glyphpress.com/plugdata/plugdata-macOS-Universal.pkg.txt"
    regex(/\b[0-9a-f]{40}\b/)
  end

  auto_updates false

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

