cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.12.2"
  sha256 arm:   "afb52d2947d483bceed753ae6750c4cd38c2987886e1b63af55ba5b82a32ead3",
         intel: "04fa9e41cfaf0c83946c22694f015dd2aae4f7cb98bbf14d936c0794dd3ec81d"

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
