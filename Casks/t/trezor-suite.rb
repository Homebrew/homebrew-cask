cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.7.3"
  sha256 arm:   "919aec380631fcece7ca7c50c74aaa2ab0a620729fd2ad729ec62c3f3ca66403",
         intel: "a5b581ad78dd77ff427d9c083fbe895ba2faeb167951480578ce19c38b9194be"

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
