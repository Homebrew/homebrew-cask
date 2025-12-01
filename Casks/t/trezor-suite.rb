cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.11.3"
  sha256 arm:   "87ef34080f674a3f9444879b610b65baf8385b9dd079dc31e32d20e58d9ebeb5",
         intel: "d385b8e2f846264242a219bd127f943129a232a1c54e42e82c9342d1f1bb7d9e"

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
