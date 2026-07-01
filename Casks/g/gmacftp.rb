cask "gmacftp" do
  version "0.0.13"
  sha256 "10e3f55dfe237e3962571ff6e72967dacfd2cdb6fb84e72250a160f98e5276a3"

  url "https://github.com/GMAC-pl/gmacFTP/releases/download/v#{version}/gmacFTP-#{version}.dmg",
      verified: "github.com/GMAC-pl/gmacFTP/"
  name "gmacFTP"
  desc "Dual-pane FTP/FTPS/SFTP client for macOS, written in Rust"
  homepage "https://github.com/GMAC-pl/gmacFTP"

  livecheck do
    url :url_latest
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "gmacFTP.app"

  zap trash: [
    "~/Library/Caches/com.gmac.gmacftp",
    "~/Library/Preferences/com.gmac.gmacftp.plist",
    "~/Library/Saved Application State/com.gmac.gmacftp.savedState",
  ]
end
