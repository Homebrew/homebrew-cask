cask 'get-backup-pro' do
  version '3.3.3'
  sha256 'e454f031dd9cd417ad8065eba95bc125fcdc5978663588f2aba97faf65075fcf'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: '16bf6fe0fc9bde97bb1a3d34f0ddcc668007a68b7bc460d482a8235c4d25df95'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  app "Get Backup Pro #{version.major}.app"
end
