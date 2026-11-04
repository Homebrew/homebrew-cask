cask "tcp-viewer" do
  version "1.23.0,123"
  sha256 "c4b39e727ab54e3919a2ac9da04607cb6e38061c2546f3cf744fed1b79f72c6f"

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
