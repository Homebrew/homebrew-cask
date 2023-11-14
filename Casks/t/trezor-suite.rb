cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.11.2"
  sha256 arm:   "49df30e222ecfb2fc577c09123429d7581fc06067626b75da65db03f66118f57",
         intel: "7c3925d5d7eedcfcd9c29f491d458d8a73730c3e7bbc8effcb2445066d3267a2"

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://github.com/trezor/trezor-suite"
    strategy :github_latest
  end

  auto_updates true

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
