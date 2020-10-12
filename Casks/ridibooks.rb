cask "ridibooks" do
  version "0.8.3"
  sha256 "74ec33c41b7e1e7f263a98d9b5a96d8eab2acb186ce99334b7d68c3396d45e24"

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
