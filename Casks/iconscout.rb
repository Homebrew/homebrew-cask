cask "iconscout" do
  version "1.0.1"
  sha256 "610c8e2d3c9d5bc2c9f7907ecff4ffa4e6dd76bf6b1b6033aa53ebbd7a3a5859"

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
