cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.3.3"
  sha256 arm:   "23a7ed8dc948ac5b56ad2dd71dd2f0f6d239791de39ac6186cc9d445e395e2a2",
         intel: "4e84f1bf442b34a861d052b8522faa26cf7833f48c46575b9da10dc9680e8a0a"

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
