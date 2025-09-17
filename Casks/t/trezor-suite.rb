cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.9.2"
  sha256 arm:   "db775ce8b6e3432ea0372fdfed60470bf98759c58e67356b3ccd83c2804cd706",
         intel: "26ce14e49ce5482b6b60be5bf258fe9180ca7a2b35dcab20c37ce29bcf338a72"

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
