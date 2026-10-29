cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.10.3"
  sha256 arm:   "d1e1bc3b597a800d4395ac152ee5445a8eadcb4c318e831a3227bbd49694d9a3",
         intel: "72f19886a13075b59b634b133eac8f308749a407b1b16197d70fe96364412842"

  url "https://data.trezor.io/suite/releases/desktop/latest/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://data.trezor.io/suite/releases/desktop/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.trezor.trezorsuite.sfl*",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end
