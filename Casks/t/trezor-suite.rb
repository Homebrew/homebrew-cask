cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.6.1"
  sha256 arm:   "aea31b05f6faf2fe37c59616efb604e52fb371477ba7ff6a090b82208b598751",
         intel: "27ca8c5f2de465bdf04eb783b5aa76f3157c6e307254dd7957e64a387bd27ea8"

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
