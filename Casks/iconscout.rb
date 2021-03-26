cask "iconscout" do
  version "1.0.1"
  sha256 "610c8e2d3c9d5bc2c9f7907ecff4ffa4e6dd76bf6b1b6033aa53ebbd7a3a5859"

  url "https://iconscout.com/download/v#{version}/Iconscout-#{version}.dmg"
  name "Iconscout"
  desc "Desktop toolbar"
  homepage "https://iconscout.com/"

  app "Iconscout.app"

  zap trash: [
    "~/Library/Application Support/Iconscout",
    "~/Library/Saved Application State/com.electron.iconscout.savedState",
    "~/Library/Preferences/com.electron.iconscout.plist",
    "~/Library/Caches/com.electron.iconscout",
    "~/Library/Caches/com.electron.iconscout.ShipIt",
  ]
end
