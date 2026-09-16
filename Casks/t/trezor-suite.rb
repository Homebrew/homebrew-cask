cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.9.2"
  sha256 arm:   "f0c621541da6038e031c47ce6a51667be4affd6841230c99daab6dad1011cfac",
         intel: "b076c6834d0beb374c5eabd072b604b6185b5dc56b3a5d069e3abf2c4388d10e"

  url "https://data.trezor.io/suite/releases/desktop/latest/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
