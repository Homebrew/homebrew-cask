cask "realvnc-connect" do
  version "8.0.1"
  sha256 "ae611e4f062d3e19ae3558e544bce520c1ee7603ef42565df928736ff3987c60"

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
