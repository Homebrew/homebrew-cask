cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.4.2"
  sha256 arm:   "2a127cb03966cb2bf649efb26d81ed95dc23fe3ae56997222f8826622f2cc284",
         intel: "9d75bc7e7bd5e8c2c6d2c02ac6fb57bef054d250cfe0352d6d7f45d199fdbcc4"

  url "https://github.com/trezor/trezor-suite/releases/download/v#{version}/Trezor-Suite-#{version}-mac-#{arch}.dmg",
      verified: "github.com/trezor/trezor-suite/"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
