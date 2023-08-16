cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.8.1"
  sha256 arm:   "5b54a80c0bf5dc5ad38860a7dd077822600fec17a38f80996a9faf4e904f746b",
         intel: "cd4d382af1ff2a47fdae4194d578c2bf12a2281955ddc183ba788c0c5b3c96de"

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
