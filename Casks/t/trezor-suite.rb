cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.8.2"
  sha256 arm:   "2b0cf05dd11e8cf8ed2408a24cc440b6473256b70b2911336078abd2d1db22b7",
         intel: "f7d90eba1d4907c70eee4ac0d1daab898ff9189e2cd3b1a96b09b0448ec57dc5"

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
