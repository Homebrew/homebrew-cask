cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.11.1"
  sha256 arm:   "2cc2d441abf128cc1b3e740ed27fa215a87c33ee00430c00f29adbaef7959481",
         intel: "16dc52af8c5cfb777dcbc7a2037b8e1911464380a2e773152fd7ee73c5889915"

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
