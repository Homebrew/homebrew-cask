cask 'domainbrain' do
  version '2.0.1'
  sha256 '3e016dcc863a4abb029f65dfb9a79573dafc5d84136d483d65874b2d0f64bd9d'

  # s3.amazonaws.com/joeworkman_downloads was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/joeworkman_downloads/DomainBrain.zip'
  appcast "https://domainbrainapp.com/appcast_v#{version.major}.xml",
          checkpoint: '28cdbb02d6f2daf21a5451e6c176445625b5d8842572f6a92fb348454c4b11e7'
  name 'DomainBrain'
  homepage 'https://domainbrainapp.com/'

  auto_updates true

  app 'DomainBrain.app'

  zap delete: [
                '~/Library/Application Support/DomainBrain',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.onebuttonmouse.domainbrain2.sfl',
                '~/Library/Preferences/com.onebuttonmouse.DomainBrain2.plist',
              ]
end
