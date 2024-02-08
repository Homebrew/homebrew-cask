cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.1.2"
  sha256 arm:   "a1779a43b9b1ff759e6edd0a311696eb607c5f945ab4f0198455e680f93e288a",
         intel: "c6f313d0832740b2533ef35d559b23ddc8418cbb50d9525717fb4e7ac08d4daa"

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
