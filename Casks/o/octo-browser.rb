cask "octo-browser" do
  arch arm: "_arm64"

  version :latest
  sha256 :no_check

  url "https://binaries.octobrowser.org/releases/installer/Octo_Browser_latest_mac#{arch}.dmg"
  name "Octo Browser"
  desc "Anti-detect browser for managing multiple profiles"
  homepage "https://octobrowser.net/"

  depends_on :macos

  app "Octo Browser.app"

  zap trash: [
    "~/.Octo Browser",
    "~/Library/Caches/net.octobrowser.client",
    "~/Library/HTTPStorages/net.octobrowser.client.binarycookies",
    "~/Library/Preferences/net.octobrowser.client.plist",
    "~/Library/Preferences/net.octobrowser.shared.plist",
    "~/Library/WebKit/net.octobrowser.client",
  ]
end
