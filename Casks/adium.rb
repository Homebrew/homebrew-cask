cask 'adium' do
  version '1.5.10'
  sha256 'bca3ac81d33265b71c95a3984be80715fbd98f38d7c463d0441d43a335ed399a'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'https://www.adium.im/sparkle/appcast-release.xml',
          :sha256 => '2a91b29bbccd62170d3f9d740c2f6a3ae903c5726c8347801a8a3dc9dbb2282e'
  name 'Adium'
  homepage 'https://www.adium.im/'
  license :gpl

  app 'Adium.app'

  zap :delete => [
                   '~/Library/Application Support/Adium 2.0',
                   '~/Library/Caches/Adium',
                   '~/Library/Caches/com.adiumX.adiumX',
                   '~/Library/Preferences/com.adiumX.adiumX.plist',
                 ]
end
