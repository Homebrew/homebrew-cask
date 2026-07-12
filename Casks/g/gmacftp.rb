cask "gmacftp" do
  version "0.1.1"
  sha256 "24bf2efb9c90911ad96bc727f81b5e7292e3cda383fff5fe12fa923fbae0a68a"

  url "https://github.com/GMAC-pl/gmacFTP/releases/download/v#{version}/gmacFTP-#{version}.dmg",
      verified: "github.com/GMAC-pl/gmacFTP/"
  name "gmacFTP"
  desc "Dual-pane FTP/FTPS/SFTP client for macOS, built in Rust"
  homepage "https://github.com/GMAC-pl/gmacFTP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "gmacFTP.app"

  zap trash: [
    "~/Library/Application Support/mackftp/client",
    "~/Library/Mobile Documents/com~apple~CloudDocs/gmacFTP",
    "~/Library/Saved Application State/app.mackftp.client.savedState",
  ]
end
