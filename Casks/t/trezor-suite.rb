cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.1.2"
  sha256 arm:   "928e91cf7ee410ffdc448007ec5aed6ee7a4b9e1c5b55db533f523e4ec40e1e4",
         intel: "4cfcfbb2b78a8965842043f65cc8cf8fbbb63ef6a470919551ab304dd3101ab2"

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
