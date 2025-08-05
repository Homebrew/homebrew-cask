cask "iconscout" do
  version "1.0.5"
  sha256 "c2c38bd79a819ac04c3c8b0856602ec3fc5ad58b2d24422c0ab23ffdbc98b64c"

  url "https://iconscout.com/download/v#{version}/Iconscout-#{version}.dmg"
  name "Iconscout"
  desc "Desktop toolbar for Iconscout"
  homepage "https://iconscout.com/"

  livecheck do
    url "https://iconscout.com/desktop-app/for-mac"
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

  caveats do
    requires_rosetta
  end
end
