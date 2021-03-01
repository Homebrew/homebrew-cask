cask "ridibooks" do
  version "0.8.13"
  sha256 "0e5756bffb5f1539cd1543fafb11af6801da86e0014dec2ccc1b6721f811fe80"

  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}.dmg",
      verified: "viewer-ota.ridicdn.net/pc_electron/"
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
