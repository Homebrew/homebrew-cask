cask 'adium' do
  version '1.5.10.4'
  sha256 '31fa3fd32b86dd3381b60e0d5aafbc2a9452036f0fb4963bffbc2a6c64a9458b'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'https://www.adium.im/sparkle/appcast-release.xml',
          checkpoint: 'bd77f84e4dba32a3337f79e6a7bb3e5678750f79248c048d3cf7661634c94028'
  name 'Adium'
  homepage 'https://www.adium.im/'

  auto_updates true

  app 'Adium.app'

  zap trash: [
               '~/Library/Application Support/Adium 2.0',
               '~/Library/Caches/Adium',
               '~/Library/Caches/com.adiumX.adiumX',
               '~/Library/Preferences/com.adiumX.adiumX.plist',
             ]
end
