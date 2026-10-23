cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "26.10.2"
  sha256 arm:   "26b61fa2d032b7d3f1625b1773ab0eb148fd2290db8c80dfc04b362efbb6026d",
         intel: "5f41ac0c13a6c6b1603786aebb1198c44f9d1f72656652078304e9fafd5a0c29"

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
