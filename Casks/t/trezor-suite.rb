cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.8.3"
  sha256 arm:   "ef4579a2dc3cd938c59d2f8ab5afb80933fda3d52fae3e5f27075fd21bb11687",
         intel: "c0c1c88dd2c5bd813d7ac035eb4b2526df39c798db95b5fde40ebd76892b4ee5"

  url "https://github.com/trezor/trezor-suite/releases/download/v#{version}/Trezor-Suite-#{version}-mac-#{arch}.dmg",
      verified: "github.com/trezor/trezor-suite/"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
