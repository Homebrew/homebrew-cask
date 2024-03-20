cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.3.2"
  sha256 arm:   "19b25a604309b43d7d258f9939972f901526e6b6bba895c7915df6fa0aa56769",
         intel: "a658bbb217d34804513434b29305d579882add0d0dd4c026175fd3e1ca1b1ceb"

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
