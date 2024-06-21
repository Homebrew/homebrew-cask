cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.6.2"
  sha256 arm:   "ab8de07d15552cf68929180b9570dce54998338f7d510ec2302292c4e85c9313",
         intel: "461ed8a236098e96e4ce5406164e9d8980602c1662bf0125e0f380dc92e62255"

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
