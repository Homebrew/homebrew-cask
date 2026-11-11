cask "realvnc-connect-viewer" do
  version "8.6.1"
  sha256 "5309d135e94111e027ce20e1bb0bf508d66116a79dbe7e8218e62c63078bad23"

  url "https://downloads.realvnc.com/download/file/realvnc-connect-viewer/RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"
  name "RealVNC Connect Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://help.realvnc.com/api/v2/help_center/en-us/sections/35761686621853/articles.json"
    regex(/RealVNC\s+(?:Connect\s+)?Viewer\s+v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["articles"]&.map do |article|
        match = article["title"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "realvnc-connect"
  depends_on :macos

  pkg "RealVNC-Connect-Viewer-#{version}-MacOSX-universal.pkg"

  uninstall quit:    "com.realvnc.rvncconnect",
            pkgutil: "com.realvnc.rvncconnect.viewer.1"

  zap trash: [
        "~/Library/Application Support/rvnc",
        "~/Library/Logs/vnc",
        "~/Library/Preferences/com.realvnc.rvncconnect.plist",
        "~/Library/Preferences/com.realvnc.vncviewer.plist",
        "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
      ],
      rmdir: "~/.vnc"
end
