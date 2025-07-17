cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.7.3"
  sha256 arm:   "efaa0d76001dcfb21fbe3056f1a070fbd6a46cdff49a66bf28dc9f1494a18a34",
         intel: "d2cebc5355dd79d0f451bf934b20e25e5d0d33a25dc372046f1a930e51383374"

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
