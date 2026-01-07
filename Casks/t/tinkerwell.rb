cask "tinkerwell" do
  arch arm: "-arm64"

  version "5.8.0"
  sha256 arm:   "52ecc873a3a8f2a1f8064d58f9e39ea17ef0b40d0c1669e66289424e6f87f6e5",
         intel: "dc1299c9359d03697f17808e8f3a0bdddc1f7be970e8aa34eed0e8d62cd72db6"

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
