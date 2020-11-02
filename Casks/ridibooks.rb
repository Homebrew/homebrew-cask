cask "ridibooks" do
  version "0.8.8"
  sha256 "90e78c8baf3b9b40860d165f582d710110cfb08c5c4b16f7e40ddb34ef2164de"

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
