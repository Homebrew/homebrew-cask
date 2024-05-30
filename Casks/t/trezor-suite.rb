cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "24.5.3"
  sha256 arm:   "fb6b8922d8983d50786d35d10d5c96f835a0d0ba9cc48c74fef81afb34fec6db",
         intel: "17bb08c130a30b29f94093294b584d3d005887a5f0f61185a7700d1a0030ef6e"

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
