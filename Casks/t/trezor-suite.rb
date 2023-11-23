cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.11.5"
  sha256 arm:   "bd65bf9e075cde1fa85e9af36c8e80f8c272e040da8505f3c63f04fd74fa92ca",
         intel: "52f9eae8b15a568a5485d2cca769ec30a4d224c296681183789cca97c3324f31"

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
