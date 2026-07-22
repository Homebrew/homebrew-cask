cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.7.2"
  sha256 arm:   "9a455b0da5c310f2a55ba953c4d22450fa618ca181f4ac40b405ea58d6268e20",
         intel: "20b64352563b72a8ce0e2cbe85fb21a8cada86919123b5b4671f8900916d8a6d"

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
