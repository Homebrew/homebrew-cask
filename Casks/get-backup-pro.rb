cask 'get-backup-pro' do
  version '3.3'
  sha256 'b17cf71cba6d2910089cc0bf087b2eb5f0e069b8fa59211d67f8524f8a90291a'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: '69e44682725cd00c49ead1ce0bf173fb4325940d01eef17a07889004c97e3be9'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  license :commercial

  app "Get Backup Pro #{version.major}.app"
end
