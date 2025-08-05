cask "dexed" do
  version "0.9.8"
  sha256 "3be32f98e56b40d9555a4069368c7307b8bae3368459bb087cf6195ae7538704"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/dexed-#{version}-macos.zip",
      verified: "github.com/asb2m10/dexed/"
  name "Dexed"
  desc "DX7 FM synthesiser"
  homepage "https://asb2m10.github.io/dexed/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "dexed-macOS-#{version}.pkg"

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
