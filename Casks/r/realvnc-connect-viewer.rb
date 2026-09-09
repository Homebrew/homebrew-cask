cask "realvnc-connect-viewer" do
  version "8.5.0"
  sha256 "fbb9708f3193224031a7e0856f67219404384d3afa1013ea5b242c0b52525659"

  url "https://downloads.realvnc.com/download/file/realvnc-connect-viewer/RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"
  name "RealVNC Connect Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  # The upstream download page links to the latest pkg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.realvnc.com/en/connect/download/viewer/macos/
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  conflicts_with cask: "realvnc-connect"
  depends_on macos: :big_sur

  pkg "RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"

  uninstall quit:    "com.realvnc.rvncconnect",
            pkgutil: "com.realvnc.rvncconnect.viewer.1"

  zap trash: [
        "~/Library/Application Support/rvnc",
        "~/Library/Logs/vnc/",
        "~/Library/Preferences/com.realvnc.rvncconnect.plist",
        "~/Library/Preferences/com.realvnc.vncviewer.plist",
        "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
      ],
      rmdir: "~/.vnc"
end
