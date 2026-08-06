cask "realvnc-connect-viewer" do
  version "8.4.2"
  sha256 "30b7a657ccb482e4f7b1bc4eaa5272b220f5dd2b66bf0ab9bc0dcf76ae71a9f3"

  url "https://downloads.realvnc.com/download/file/realvnc-connect-viewer/RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"
  name "RealVNC Connect Viewer"
  desc "Remote desktop client application"
  homepage "https://www.realvnc.com/"

  # The upstream download page links to the latest pkg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.realvnc.com/en/connect/download/viewer/macos/
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  conflicts_with cask: "realvnc-connect"
  depends_on macos: :monterey

  pkg "RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"

  uninstall pkgutil: "com.realvnc.rvncconnect.viewer.1"

  zap trash: [
    "~/Library/Application Support/com.realvnc.rvncconnect",
    "~/Library/Logs/vnc",
    "~/Library/Preferences/com.realvnc.rvncconnect.plist",
  ]
end
