cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.10.1"
  sha256 arm:   "9cc6bc1ffe3b66e0c43c969970a7658d1e86bc1496f2c291113d82e0bd52dc38",
         intel: "916b12bef34ec568f58bdfcfa1ed7361c72909f048bf3c510b18e42c7ac2518a"

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
