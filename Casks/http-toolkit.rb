cask "http-toolkit" do
  version "1.1.1"
  sha256 "d5cd7ff72ea8d5347778f5bc944b5c6e9962eae1756ced2374baa97ac531a1ca"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}.dmg",
      verified: "github.com/httptoolkit/httptoolkit-desktop/"
  appcast "https://github.com/httptoolkit/httptoolkit-desktop/releases.atom"
  name "HTTP Toolkit"
  homepage "https://httptoolkit.tech/"

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
