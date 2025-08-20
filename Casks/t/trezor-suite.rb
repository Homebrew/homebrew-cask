cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.8.2"
  sha256 arm:   "d87b95ba29700f973a5ed249aa997c681976414c4e46977c31af067e5c28075f",
         intel: "fac805d8bba3ef89212aea9b33692259470b14359f4e43624a61971152725736"

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
