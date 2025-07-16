cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.7.2"
  sha256 arm:   "9b27a7cb2b0ddc0115bdd5e3ebf23105e6dc7d21119f1d1f206a01da5d7b075f",
         intel: "1288409242a712e4b91428ffb63f3fe6b577d578bf2810fa7a55b20804160b13"

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
