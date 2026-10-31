cask "dexed" do
  version "1.1.0"
  sha256 "f95b5d4a8985af444094fd3d76c5f4c86795f56169b9b9a1f4d620bb54c300ce"

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
