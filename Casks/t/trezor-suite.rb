cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.3.3"
  sha256 arm:   "e9511cd86270618dddcc81c4959313b6eaf23045c351ac05c8faf1b89fa005aa",
         intel: "1988267d7691d112dabcf336a583fadf9d62161eda9ae16798616b887c70e914"

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
