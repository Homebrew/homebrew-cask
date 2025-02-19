cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.2.2"
  sha256 arm:   "908e1c40315f34ae38363b5c4b5c580ab136e35ac2bdff62c03650f162f7452e",
         intel: "ed0200aa61589ef16f8d2b849d287ba795874fcbed196b7895c49af4f04f66de"

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
