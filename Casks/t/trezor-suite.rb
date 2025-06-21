cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.6.2"
  sha256 arm:   "1fa84a62e0b4da651deb63e68e25313d37dc6d5ca1e7b5168462983a544b99f9",
         intel: "79d3ea0277176c38e8d4a7bee070248f6406bce028cb9459dd79fe2ad36f5110"

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
