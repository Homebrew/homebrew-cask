cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.9.3"
  sha256 arm:   "2295414d9ad9f160aae1d00b5b82f8f6256043135135cbb1c2e381a1d2094002",
         intel: "ce6e14721627eaa4605117dc7407da1eb63986b59154ce674478567c5c6da78a"

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
