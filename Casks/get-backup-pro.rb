cask 'get-backup-pro' do
  version '3.4.1'
  sha256 'cc45cf7299bc1e6c7de4011785a72565227bb84e36d966acf664757b866ed278'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: 'b8c319ce4e8a6eeafb05ca207d20248372a4a2570b106e95b4f495dd592f3b91'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  app "Get Backup Pro #{version.major}.app"
end
