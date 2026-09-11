cask "tcp-viewer" do
  version "1.17.1,54"
  sha256 "551e3c376f2f17d4b568d8e7cebb6ecdd8ed9b49bea58c020d2db4b64f35a54f"

  url "https://assets-tcpviewer.proxyman.com/release/production/#{version.csv.first}/#{version.csv.second}/tcpviewer_#{version.csv.first}_#{version.csv.second}.dmg"
  name "TCP Viewer"
  desc "Packet capture and inspection tool"
  homepage "https://tcpviewer.proxyman.com/"

  livecheck do
    url "https://api-tcpviewer.proxyman.com/api/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "TCP Viewer.app"
  binary "#{appdir}/TCP Viewer.app/Contents/MacOS/tcpviewer-cli"

  uninstall launchctl: "com.proxyman.tcpviewer.helpertool",
            quit:      "com.proxyman.tcpviewer",
            delete:    [
              "/Library/LaunchDaemons/com.proxyman.tcpviewer.helpertool.plist",
              "/Library/PrivilegedHelperTools/com.proxyman.tcpviewer.helpertool",
            ]

  zap trash: [
    "~/Library/Application Support/TCPViewer",
    "~/Library/Caches/com.proxyman.tcpviewer",
    "~/Library/Preferences/com.proxyman.tcpviewer.plist",
    "~/Library/Saved Application State/com.proxyman.tcpviewer.savedState",
  ]
end
