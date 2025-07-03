cask "realvnc-connect" do
  version "8.1.0"
  sha256 "769bf5eba7e0e39c35fde651e16e685e2cf0f7037527cf01d35990b3d394c483"

  url "https://downloads.realvnc.com/download/file/realvnc-connect/RealVNC-Connect-#{version}-MacOSX-universal.pkg"
  name "RealVNC Connect"
  desc "Remote desktop client and server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download"
    regex(/RealVNC[._-]Connect[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]universal\.pkg/i)
  end

  depends_on macos: ">= :sequoia"

  pkg "RealVNC-Connect-#{version}-MacOSX-universal.pkg"

  uninstall launchctl: [
              "com.realvnc.rvncserver",
              "com.realvnc.rvncserver.peruser",
            ],
            pkgutil:   "com.realvnc.rvncconnect.pkg"

  zap trash: [
    "~/Library/Application Support/com.realvnc.rvncconnect",
    "~/Library/Logs/vnc",
    "~/Library/Preferences/com.realvnc.rvncconnect.plist",
  ]
end
