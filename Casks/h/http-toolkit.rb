cask "http-toolkit" do
  version "1.14.3"
  sha256 "05c14b5a835c747a585de71849d5058daff2b1b3b45160760804f771793d94e8"

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
