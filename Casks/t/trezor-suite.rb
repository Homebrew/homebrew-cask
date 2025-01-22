cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.1.2"
  sha256 arm:   "cc27da74ce624680caa3728233ace15ffa82d0711178f2671e295a5afef9b04d",
         intel: "43c03437bf8ebb1d1babe4838622005b441c197c3a3fe2d8d439a24da884ec96"

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
