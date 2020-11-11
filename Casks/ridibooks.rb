cask "ridibooks" do
  version "0.8.9"
  sha256 "5221ca3b7ef94d84fd1e1e452645eeec745bfce8e89e25a2f41adb2195bd2ae1"

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
