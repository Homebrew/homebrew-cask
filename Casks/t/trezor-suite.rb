cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.2.2"
  sha256 arm:   "52ec533d0661b35235813ee796f18ff4c375266042a636ffd8ecf2f7f369e844",
         intel: "9c580bc8e0aa5560548d203cadec2e737dc2278de8b7cdcce134f8c21ae41b78"

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
