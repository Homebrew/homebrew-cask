cask "tint" do
  version "1.0.0"
  sha256 "6e7e265a49eda86c83f74d7b7d629e7c9f6d0d061088d3e58587e14db5846f90"

  url "https://assets.beyondco.de/tint/Tint-#{version}.dmg"
  name "Tint"
  desc "Tailwind CSS colour picker"
  homepage "https://beyondco.de/software/tint"

  livecheck do
    url "https://assets.beyondco.de/tint/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tint.app"

  zap trash: [
    "~/Library/Application Support/Tint",
    "~/Library/Logs/Tint",
    "~/Library/Preferences/de.beyondco.tint.plist",
    "~/Library/Saved Application State/de.beyondco.tint.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
