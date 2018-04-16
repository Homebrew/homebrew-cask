cask 'get-backup-pro' do
  version '3.4.4'
  sha256 'b3014bfdf32204a4b112a5769ffe3acf614f06feccbeb41574d0881fbdb51860'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: '405ecdcaa9c05435bf80207982e48395d5f7a845d3acd476a8bd5ace404e8cb2'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
