cask "ridibooks" do
  version "0.8.5"
  sha256 "82d718aa5804bf7193212aab33a8c2c4259396be6ed4ad1ff3b245da06ec9e4e"

  # viewer-ota.ridicdn.net/pc_electron/ was verified as official when first introduced to the cask
  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}.dmg"
  appcast "https://s3-ap-northeast-2.amazonaws.com/viewer-ota.ridicdn.net/pc_electron/latest-mac.yml"
  name "Ridibooks"
  homepage "https://ridibooks.com/support/app/download"

  depends_on macos: ">= :sierra"

  app "Ridibooks.app"

  zap trash: [
    "~/Library/Application Support/RIDI",
    "~/Library/Preferences/com.ridibooks.Ridibooks.plist",
  ]
end
