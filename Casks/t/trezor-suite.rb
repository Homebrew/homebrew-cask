cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.7.3"
  sha256 arm:   "bc77bde31935f9dc1148ae43e365da981ed55d25c4c3b1e4ebc14b7e76dac1b3",
         intel: "6ef30545bb1deeb2bd25fadcc94256954b24bed17e4cfc099423b6789f10b6cd"

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
