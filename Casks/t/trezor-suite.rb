cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.4.2"
  sha256 arm:   "70e9a97a65cda32a6408502a01af324b398cbed5d276eb268bc76596c3bb99e9",
         intel: "ee2f929dbaba92914bb7d085a7a023c62763e1e4a8e76b7ca3eb438d1e91fe48"

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
