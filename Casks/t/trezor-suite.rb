cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.7.4"
  sha256 arm:   "fa6737a853158593065f94bb545db8fee2149418be937be855925f5864daa605",
         intel: "d42cef8eda78054db0243bdd94b97793fb1f260381060c81bebd3185e1bb69be"

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
