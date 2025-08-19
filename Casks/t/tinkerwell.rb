cask "tinkerwell" do
  arch arm: "-arm64"

  version "5.3.0"
  sha256 arm:   "18295a34738e280eaa9852a2eae7d3e20bba877bb0bb4df899bc8e47a21bda98",
         intel: "36c5b9afdba9a6048528574c2c26cbcda754201bd0e6c55e4400ad711d548ea3"

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
