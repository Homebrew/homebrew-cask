cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.6.3"
  sha256 arm:   "8ed58dfadcf9e3d06c3c32b47adf2a596d50ba485f3963740f95bbd07d1031e8",
         intel: "da6a3db103698973aa0cb4063c066e2ab5189103f90d66f2baf8237692e363a5"

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
