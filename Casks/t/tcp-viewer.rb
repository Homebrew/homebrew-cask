cask "tcp-viewer" do
  version "1.18.0,60"
  sha256 "4965c7a7f38d851524f74152c0946873af98ea34ac72eaa560faa2bc050dfa81"

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
