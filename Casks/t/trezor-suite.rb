cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.5.1"
  sha256 arm:   "a7769101b03fb8faeeaf24089e10bf97d11d0c7648ee5f639ccb57958ebe307f",
         intel: "821de7efb277b84449edda601ee61a01fd58c044c5d161fadb6003e8fca07103"

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
