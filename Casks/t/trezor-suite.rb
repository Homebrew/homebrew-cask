cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.11.2"
  sha256 arm:   "6ed0a8009385795dfc4206200ef15bb8442f2433148063129261c6ca703ace73",
         intel: "c7bd93e2de0519383ad11e872d1b98a0d23bb83b7b2810676de2c3ab182437c1"

  url "https://data.trezor.io/suite/releases/desktop/latest/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
