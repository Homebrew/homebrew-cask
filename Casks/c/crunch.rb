cask "crunch" do
  version "5.0.0"
  sha256 "80ebe4ddfbd6813535910c518e0594db7c23061e1a0f5c6c30382db1fc25b347"

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  name "Crunch"
  desc "PNG image optimiser"
  homepage "https://github.com/chrissimpkins/Crunch"

  app "Crunch.app"

  zap trash: [
    "~/Library/Preferences/com.csimpkins.Crunch.plist",
    "~/Library/Saved Application State/com.csimpkins.Crunch.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
