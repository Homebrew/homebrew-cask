cask "iconscout" do
  version "1.0.2"
  sha256 "d541057ad7c08142e4fd04c765c687116bf820e2ea9cd939bba60af3e45ee69c"

  url "https://iconscout.com/download/v#{version}/Iconscout-#{version}.dmg"
  name "Iconscout"
  desc "Desktop toolbar for Iconscout"
  homepage "https://iconscout.com/"

  livecheck do
    url "https://iconscout.com/download"
    regex(/Iconscout[._-]v?(\d+(?:\.\d+)+)/i)
  end

  app "Iconscout.app"

  zap trash: [
    "~/Library/Application Support/Iconscout",
    "~/Library/Caches/com.electron.iconscout",
    "~/Library/Caches/com.electron.iconscout.ShipIt",
    "~/Library/Preferences/com.electron.iconscout.plist",
    "~/Library/Saved Application State/com.electron.iconscout.savedState",
  ]
end
