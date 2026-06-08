cask "realvnc-connect" do
  version "8.4.1"
  sha256 "86466b80045b3aede50d0f411cac084c2973b935165d6f557d83a14e59effd7d"

  url "https://downloads.realvnc.com/download/file/realvnc-connect/RealVNC-Connect-#{version}-MacOSX-universal.pkg"
  name "RealVNC Connect"
  desc "Remote desktop client and server application"
  homepage "https://www.realvnc.com/"

  # The upstream download page links to the latest pkg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.realvnc.com/en/connect/download/#moreInstall
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: :sequoia

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
