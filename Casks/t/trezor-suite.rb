cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.5.2"
  sha256 arm:   "c81d87e6c04a1ea5f35d9c25007ab3d5b85ef7ed25f709fc9139e78415c316da",
         intel: "dd99e21c31da6f25e851edf33b527ad77e59440868ee0981515d40736f3017ac"

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
