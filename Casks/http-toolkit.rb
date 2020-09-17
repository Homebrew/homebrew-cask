cask "http-toolkit" do
  version "1.0.1"
  sha256 "0106ba8af6d5c596753830ca3e61bd1c3544bef771f6bdc8824f689111507fec"

  # github.com/httptoolkit/httptoolkit-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HTTP.Toolkit.dmg"
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
