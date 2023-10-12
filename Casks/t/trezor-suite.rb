cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.10.1"
  sha256 arm:   "58a23c3ce239190ed1555b673aa05638785135e898234a7066e2e34f396904eb",
         intel: "08b9a2c2ea906803ee70ce7da32bcacceea754983dbb9f573067ea2c7da1585f"

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://github.com/trezor/trezor-suite"
    strategy :github_latest
  end

  auto_updates true

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
