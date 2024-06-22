cask "http-toolkit" do
  version "1.17.2"
  sha256 "4aa29645842178d8f203dcb8a44755de6285480597613cc8636401cecf9e7d48"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}.dmg",
      verified: "github.com/httptoolkit/httptoolkit-desktop/"
  name "HTTP Toolkit"
  desc "HTTP(S) debugging proxy, analyzer, and client"
  homepage "https://httptoolkit.tech/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "HTTP Toolkit.app"

  zap trash: [
    "~/Library/Application Support/HTTP Toolkit",
    "~/Library/Caches/httptoolkit-server",
    "~/Library/Logs/HTTP Toolkit",
    "~/Library/Preferences/httptoolkit",
    "~/Library/Preferences/tech.httptoolkit.desktop.plist",
    "~/Library/Saved Application State/tech.httptoolkit.desktop.savedState",
  ]
end
