cask "tinkerwell" do
  arch arm: "-arm64"

  version "4.21.4"
  sha256 arm:   "743d88ebbe5ebd0809530dff7ba75ba1445ae99d186ef9101744dfac3b46a82e",
         intel: "5f3fe27b5a5eb65095a118882a0a04225784257a4ef3c690c38b466927a92b89"

  url "https://download.tinkerwell.app/tinkerwell/Tinkerwell-#{version}#{arch}.dmg"
  name "Tinkerwell"
  desc "Tinker tool for PHP and Laravel developers"
  homepage "https://tinkerwell.app/"

  livecheck do
    url "https://download.tinkerwell.app/tinkerwell/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tinkerwell.app"

  zap trash: [
    "~/.config/tinkerwell",
    "~/Library/Application Support/Tinkerwell",
    "~/Library/Caches/de.beyondco.tinkerwell",
    "~/Library/Caches/de.beyondco.tinkerwell.ShipIt",
    "~/Library/Logs/Tinkerwell",
    "~/Library/Preferences/de.beyondco.tinkerwell.plist",
    "~/Library/Saved Application State/de.beyondco.tinkerwell.savedState",
  ]
end
