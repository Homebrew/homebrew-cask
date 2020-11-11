cask "get-backup-pro" do
  version "3.5.10"
  sha256 "5a141df6ab36aadd89285586c65d2bdfdc1ade532aeab2ab509e8d5863c09566"

  # belightsoft.s3.amazonaws.com/updates/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronization"
  homepage "https://www.belightsoft.com/products/getbackup/"

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
