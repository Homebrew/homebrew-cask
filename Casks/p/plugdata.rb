cask "plugdata" do
  version "0.9.2"
  sha256 "b60e15f63eedeeaa5f89d69bf4b65d744e4888e918140ae1d309e9b0213eb5f2"

  url "https://github.com/plugdata-team/plugdata/releases/download/v#{version}/plugdata-macOS-Universal.pkg",
      verified: "github.com/plugdata-team/plugdata/"
  name "PlugData"
  desc "Plugin wrapper for PureData"
  homepage "https://plugdata.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  conflicts_with cask: "plugdata@nightly"

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
