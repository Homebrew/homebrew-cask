cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.12.3"
  sha256 arm:   "4fc8bb647112ad89f3caee7ac3c0faa45721dc7043c0351c51bc95eac94400ac",
         intel: "a42f009a31eee2211a3139b9523ef8d88e4eee7c37c27631e8a38976524269f3"

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
