cask "tracexy" do
  version "0.9.1,16"
  sha256 "f16fb7abca49be65eef20a5210feb86eed4c13a14b252b876004ebd10c47c849"

  url "https://github.com/RockxyApp/Tracexy/releases/download/v#{version.csv.first}/Tracexy-#{version.tr(",", "-")}.dmg"
  name "Tracexy"
  desc "Inspect network sessions, protocols, processes, and packet evidence"
  homepage "https://rockxy.io/tracexy"

  livecheck do
    url "https://raw.githubusercontent.com/RockxyApp/Tracexy/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tracexy.app"

  uninstall launchctl: "com.amunx.tracexy.helper",
            quit:      "com.amunx.tracexy.community"

  zap trash: [
    "~/Library/Application Support/com.amunx.tracexy.community",
    "~/Library/Caches/com.amunx.tracexy.community",
    "~/Library/HTTPStorages/com.amunx.tracexy.community",
    "~/Library/Preferences/com.amunx.tracexy.community.plist",
    "~/Library/Saved Application State/com.amunx.tracexy.community.savedState",
  ]
end
