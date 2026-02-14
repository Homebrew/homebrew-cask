cask "plugdata" do
  version "0.9.3"
  sha256 "44344723ec6b975d59823725277e886b5513a04cb397dff0a5ce8ad8e042564b"

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
