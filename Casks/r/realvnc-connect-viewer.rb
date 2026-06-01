cask "realvnc-connect-viewer" do
  version "8.4.1"
  sha256 "1bcf0be0a96fb5254a4063b9aae9073641debc0ce572a4eaa7212a296c5dcb26"

  url "https://downloads.realvnc.com/download/file/realvnc-connect-viewer/RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"
  name "Real VNC Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download-2/"
    regex(/RealVNC[._-]Connect[._-]Viewer[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX-universal\.pkg/i)
  end

  depends_on macos: :big_sur

  pkg "RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"

  uninstall pkgutil: "com.realvnc.rvncconnect.viewer.1"

  zap trash: [
    "~/Library/Preferences/com.realvnc.vncviewer.plist",
    "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
  ]
end
