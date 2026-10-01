cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.9.3"
  sha256 arm:   "4dfef51cdd069ae8dd58e9883a6eaf90d6051778271d03b87a84461606750adf",
         intel: "6b52ffad3e543ab1418748d30997d68b473d36d241aea52ddb4383e99f2439d1"

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
