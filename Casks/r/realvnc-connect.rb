cask "realvnc-connect" do
  version "8.5.3"
  sha256 "721da5ccac4ac76491b163ba558e9c3e2190570e0a80dd0affcf0745996097c6"

  url "https://downloads.realvnc.com/download/file/realvnc-connect/RealVNC-Connect-#{version}-MacOSX-universal.pkg"
  name "RealVNC Connect"
  desc "Remote desktop client and server application"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://help.realvnc.com/api/v2/help_center/en-us/sections/26441433034013/articles.json"
    regex(/RealVNC\s+Connect\s+v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["articles"]&.map do |article|
        match = article["title"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "realvnc-connect-viewer"
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
