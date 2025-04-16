cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.4.2"
  sha256 arm:   "fe19a40fe30e5ace1645069a4ea7ec100cdcaa9dd5822f11ca4699ec29d8f604",
         intel: "b0e55c58db32db2e73c7dfe2653d846931752429a7ed6fab92021465b6717d62"

  url "https://data.trezor.io/suite/releases/desktop/latest/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
