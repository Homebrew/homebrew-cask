cask "tracexy" do
  version "0.9.2,17"
  sha256 "674fc314a2e85f04fcce2061722f207423656abb8ef3b4d75372c290e4400626"

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
    "~/Library/Application Scripts/com.amunx.tracexy.community.spotlight",
    "~/Library/Application Support/com.amunx.tracexy.community",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amunx.tracexy.community.sfl*",
    "~/Library/Caches/com.amunx.tracexy.community",
    "~/Library/Containers/com.amunx.tracexy.community.spotlight",
    "~/Library/HTTPStorages/com.amunx.tracexy.community",
    "~/Library/Preferences/com.amunx.tracexy.community.plist",
    "~/Library/Preferences/com.amunx.tracexy.community.project.*.plist",
    "~/Library/Saved Application State/com.amunx.tracexy.community.savedState",
  ]
end
