cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.8.2"
  sha256 arm:   "99f511e73f6f10ec97b824e64c5906435b3abe20d092c0ac95362c195f352fc1",
         intel: "783ca7d43e082a2b05eef33ddbb23b4d8020602edfd7d53760a3448849287d6c"

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
