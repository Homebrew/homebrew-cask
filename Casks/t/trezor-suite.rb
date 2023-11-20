cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.11.3"
  sha256 arm:   "886e5a47acbe09447bebe8a43628b3b859d55e3c5ee734ed3024eeb877e9ca99",
         intel: "55a16ee64c1f3d111443efc638dffb1788775fe6fd5e1fb9869a301bb860600b"

  url "https://github.com/trezor/trezor-suite/releases/download/v#{version}/Trezor-Suite-#{version}-mac-#{arch}.dmg",
      verified: "github.com/trezor/trezor-suite/"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
