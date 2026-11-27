cask "dexed" do
  version "1.1.1"
  sha256 "be28c12705cf01ca19a5785356237d6fcf140dd64cb691dc194bd5f83ff42f89"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/Dexed-#{version}-macOS.dmg"
  name "Dexed"
  desc "DX7 FM synthesiser"
  homepage "https://asb2m10.github.io/dexed/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Dexed-#{version}-macOS.pkg"

  uninstall pkgutil: [
              "com.digitalsuburban.dexed.app.pkg",
              "com.digitalsuburban.dexed.clap.pkg",
              "com.digitalsuburban.dexed.component.pkg",
              "com.digitalsuburban.dexed.vst3.pkg",
            ],
            delete:  "/Applications/Dexed.app"

  zap trash: [
    "/private/var/db/receipts/com.digitalsuburban.dexed.*",
    "~/Library/Application Support/Dexed.settings",
    "~/Library/Saved Application State/com.digitalsuburban.Dexed.savedState",
  ]
end
