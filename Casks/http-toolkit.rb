cask "http-toolkit" do
  version "1.0.2"
  sha256 "2a0283f9a3f41dae350753413aae85a5b35a250248da22b2564bd3ed4c68e305"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HTTP.Toolkit.dmg",
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
