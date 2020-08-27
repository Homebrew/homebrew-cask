cask "http-toolkit" do
  version "1.0.0"
  sha256 "5d810a2226c3b4143ce1ef8a75421fd1deb3ddd532f60d7317e79fd66c9f4da0"

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
