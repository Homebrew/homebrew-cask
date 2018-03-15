cask 'get-backup-pro' do
  version '3.4.3'
  sha256 '76e7d49c5055607c5ac9efcc7a309a3c05a7d65263ef5f1db7cda8f84cf39329'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: 'c4177d351a4c4db0bb964a1345f5f24dbbca2bc48e3d82feea90a4dfdcf96a35'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  app "Get Backup Pro #{version.major}.app"
end
