cask "1clipboard" do
  version "0.1.8"
  sha256 :no_check

  url "https://1clipboard.io/download/darwin/1Clipboard.dmg"
  name "1Clipboard"
  desc "Clipboard managing app"
  homepage "https://1clipboard.io/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "1Clipboard.app"

  uninstall quit: [
    "com.ngwin.1clipboard",
    "com.ngwin.1clipboardhelper",
  ]

  zap trash: [
    "~/Library/Application Support/1Clipboard",
    "~/Library/Application Support/com.ngwin.1clipboard.ShipIt",
    "~/Library/Caches/1Clipboard",
    "~/Library/Caches/com.ngwin.1clipboard",
    "~/Library/Preferences/com.ngwin.1clipboard.plist",
    "~/Library/Saved Application State/com.ngwin.1clipboard.savedState",
  ]
end
