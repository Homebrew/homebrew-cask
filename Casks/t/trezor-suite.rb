cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.6.3"
  sha256 arm:   "31b9b8e13645b36a9b851c3c4576ce00b982feaeb81eb783937346909e3f3063",
         intel: "5d687ab98c864ced35866358ebcb9fcd86a91d3a442c8258796c79ac6826cf43"

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
