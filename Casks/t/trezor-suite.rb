cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "25.3.2"
  sha256 arm:   "427b9db1ca407e737b0cac90b17f324ac8cd9eddcc9ba7577d4119e508d647e0",
         intel: "1ebcb68497ccaf3b7a3ad0541121ca9a834244294f84d64c8273d92c7f85ce9d"

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
