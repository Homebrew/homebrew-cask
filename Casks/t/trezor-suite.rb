cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.5.2"
  sha256 arm:   "59e52c7bff578acc2fecce8463326980c02fa08c6293943408bdf1ecee92a3e4",
         intel: "3ca7af5e545c992766ac2c975dcbecb45743987280f46e39a5f275d944cb6b0c"

  url "https://data.trezor.io/suite/releases/desktop/latest/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
