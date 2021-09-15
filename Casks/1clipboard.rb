cask "1clipboard" do
  version "0.1.8"
  sha256 "d1dee1594fa8b16a54bbcaf2d88b07e3bade0bb809416e535621ddb63b9e2b3d"

  url "http://1clipboard.io/download/darwin/#{version}/1Clipboard.zip"
  name "1Clipboard"
  desc "Clipboard managing app"
  homepage "http://1clipboard.io/"

  livecheck do
    url "http://1clipboard.io/download/darwin/"
    regex(%r{/v?(\d+(?:\.\d+)+)/1Clipboard\.zip}i)
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
