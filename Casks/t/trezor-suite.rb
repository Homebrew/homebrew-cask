cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.2.3"
  sha256 arm:   "13a1678c85a2a7003beb9acc60c023304bb8be6e6fe33bee0ddcb9d4a918a968",
         intel: "d6edf5512145c7cde70fdc0690467ed5944b8d563f81cae632fdec27f14886bf"

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
