cask "blitz" do
  version "1.14.24"
  sha256 "ddfd5554fdc22581427177b3d52e6a979e6140c199bc3fb26c0612c3cb114c75"

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
