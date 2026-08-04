cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.7.4"
  sha256 arm:   "606d6c00bc97e48c24dd1821c4568f822812f71a9204f324662ac3c18305b999",
         intel: "59f3566d7a7fc6ce0f8c4fdca8fd01486b7ef139240deb03b727d1bcf7167d95"

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
