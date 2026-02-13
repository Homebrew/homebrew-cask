cask "iconscout" do
  version "1.0.6"
  sha256 "ce9290257210a46c3a2e8f0c584e0b1ff798fa66da0c054258a9848c0deb7ee2"

  url "https://github.com/Iconscout/iconscout-app/releases/download/v#{version}/IconScout-#{version}.dmg",
      verified: "github.com/Iconscout/iconscout-app/"
  name "Iconscout"
  desc "Desktop toolbar for Iconscout"
  homepage "https://iconscout.com/"

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
