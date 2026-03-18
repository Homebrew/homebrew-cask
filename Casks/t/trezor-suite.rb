cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.3.2"
  sha256 arm:   "5a04e2b6bf7f86422460f53d5ad421aa8c64d9ddb7e27b310b33fc96f9fecd8d",
         intel: "9db7fe0b392fea1d3ef2ae1c2d2ca6db793dc9c8f38660b374edd1545d84aa61"

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
