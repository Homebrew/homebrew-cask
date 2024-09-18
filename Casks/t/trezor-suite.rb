cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.9.2"
  sha256 arm:   "c3bea6d1de927c00afbf75f2fb2a230c2ca3f679047aaa17a309451f6f537150",
         intel: "8ad3ebb03d0ff3e1f44ee0c29c8edd129d48e7b01d66c054c9680d7a54a49cc0"

  url "https://github.com/trezor/trezor-suite/releases/download/v#{version}/Trezor-Suite-#{version}-mac-#{arch}.dmg",
      verified: "github.com/trezor/trezor-suite/"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
