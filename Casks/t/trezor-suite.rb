cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.5.4"
  sha256 arm:   "f06fbc2076c3357887bdd548f03526edc571b17e4dc4f83f36a19ab12edccb9a",
         intel: "ef81b83a836593e863673fbb81af650a6940aaa0f411643d5af3a838d17b095a"

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
