cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.11.2"
  sha256 arm:   "23533d9f06c7c0bc78793d57ee274571f681cbb3952efc567bc37474888031de",
         intel: "d9dd74b079174830c7a9fad2d87ff63be3354e0c96d2881fdf6e004d3aa41fed"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.trezor.trezorsuite.sfl*",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
