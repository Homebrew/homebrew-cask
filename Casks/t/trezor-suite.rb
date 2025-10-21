cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.10.2"
  sha256 arm:   "4ac0805be1512038fa2c4f6bc829c4965e7d93a7b69bbe741d4cf037c2264576",
         intel: "73f52da2b6d50aec2f1a4d760f98cf2844c56a6d165920f3e78d81dd71c536e9"

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
