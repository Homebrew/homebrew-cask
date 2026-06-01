cask "realvnc-server" do
  version "7.17.0"
  sha256 "147092e514099a1b4d6a3ae53088a5c3bc6cd6498c5cf98d4d4022049cb3ff9e"

  url "https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-#{version}-MacOSX-universal.pkg"
  name "Real VNC Server"
  desc "Remote desktop server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download-2/"
    regex(/VNC[._-]Server[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX-universal\.pkg/i)
  end

  depends_on :macos

  pkg "VNC-Server-#{version}-MacOSX-universal.pkg"

  uninstall early_script: {
    executable: "/Applications/RealVNC/Uninstall RealVNC Server.app/Contents/MacOS/Resources/uninstaller.sh",
    sudo:       true,
  }, launchctl: [
       "com.realvnc.vncagent.peruser",
       "com.realvnc.vncagent.prelogin",
       "com.realvnc.vncserver",
       "com.realvnc.vncserver.peruser",
     ],
            pkgutil:   [
              "com.realvnc.vncserver.1",
              "com.realvnc.vncserver.pkg",
            ]

  zap trash: [
    "/Library/Logs/vncserver.log.bak",
    "~/Library/Saved Application State/com.realvnc.vnclicensewiz.savedState",
    "~/Library/Saved Application State/com.realvnc.vncserver.savedState",
  ]
end
