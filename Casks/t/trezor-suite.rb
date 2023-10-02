cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.9.3"
  sha256 arm:   "645a3ec768a258a7703e7df3f56d439ab269838ac502da14b08a4651e8d87fb0",
         intel: "d658cd5d9c027608d081b3fb72d448b4db63bed98a870bbff12021f139a92e83"

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
