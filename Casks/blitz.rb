cask "blitz" do
  version "1.15.14"
  sha256 "f2d0a48162d1d4ad78e7e3009cd5a1951635b4c93f6f60f153a998e850615a7a"

  url "https://blitz-stable.blitz.gg/Blitz-#{version}.dmg"
  name "Blitz"
  desc "Performance analysis software"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://dl.blitz.gg/download/mac"
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
