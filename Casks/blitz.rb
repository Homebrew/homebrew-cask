cask "blitz" do
  version "1.14.6"
  sha256 :no_check

  url "https://dl.blitz.gg/download/mac"
  name "Blitz"
  desc "Performance analysis software"
  homepage "https://blitz.gg/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Blitz.app"

  uninstall quit: "com.blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
    "~/Library/Caches/com.blitz.app.ShipIt",
    "~/Library/Cookies/com.blitz.app.binarycookies",
    "~/Library/Logs/Blitz",
    "~/Library/Preferences/com.blitz.app.plist",
    "~/Library/Saved Application State/com.blitz.app.savedState",
  ]
end
