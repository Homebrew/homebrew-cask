cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.6.1"
  sha256 arm:   "9876f1f0608a7fa7b280173a90166409a85caa3848f652cb2c71305c63ec9b7e",
         intel: "749e2b16a665f8e443009e832261730a4ad1ad098bef7a18eee9aa0f5a0ec73e"

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
