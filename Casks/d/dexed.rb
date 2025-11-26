cask "dexed" do
  version "0.9.9"
  sha256 "d747015bcd6d8e0714e87ca8a679ff4861a4c27c73339051ecfa52d1928e8ff8"

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
