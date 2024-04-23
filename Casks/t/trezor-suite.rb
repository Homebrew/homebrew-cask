cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.4.3"
  sha256 arm:   "fcf078646a6df69efaf350831de3a10be9b7a6fa7e96342b13947f3587c734a8",
         intel: "27f01d52ce27d72007576c0ffe9d95e14d64b689dcd029541f8202dd7bfec04f"

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
