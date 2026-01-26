cask "dexed" do
  version "1.0.1"
  sha256 "a6505103869d15400e7bed1d988d9dd155d6d8204a3d532f5301966ae7507ad8"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/Dexed-#{version}-macOS.dmg",
      verified: "github.com/asb2m10/dexed/"
  name "Dexed"
  desc "DX7 FM synthesiser"
  homepage "https://asb2m10.github.io/dexed/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
