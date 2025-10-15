cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.10.1"
  sha256 arm:   "3b5e28fdb607d27061500595f9429ca947303f4991b713b9ea33d15a80ed6627",
         intel: "33c26083fd3846519d7a4b146f116b0a9de82d9f334f93fcd8048e9cf4356f59"

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
