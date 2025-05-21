cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.5.2"
  sha256 arm:   "40bc2cc17cd7529085d0a6bb837bd0a8cd1607e2dd92483dd19a6bf1bceba2f7",
         intel: "ce149ef496e94c2393794612f69063b2a86edd9a329b4adee48682399bbe3ace"

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
