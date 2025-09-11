cask "realvnc-connect" do
  version "8.2.0"
  sha256 "ca3206cc71bbf51808e22137dd1c603c520f33d33a6a60c4dbb8ad570560cea7"

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
              "com.realvnc.rvncserver.prelogin",
            ],
            pkgutil:   [
              "com.realvnc.rvncconnect.1",
              "com.realvnc.rvncconnect.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/com.realvnc.rvncconnect",
    "~/Library/Logs/vnc",
    "~/Library/Preferences/com.realvnc.rvncconnect.plist",
  ]
end
