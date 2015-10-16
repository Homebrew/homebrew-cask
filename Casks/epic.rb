cask :v1 => 'epic' do
  version '2462'
  sha256 'fc8fadf78816eaad050d514b3fc9a5c524b7fe5bf5a4b779e7b373ba2c240d1f'

  # kxcdn.com is the official download host per the vendor homepage
  url "https://macepic-cbe.kxcdn.com/#{version}/sign/Epic.dmg"
  name 'Epic Privacy Browser'
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          :sha256 => '86f5ea26c4a6c06db017657484b1cf6754a4524cea40f1bb7a63c551c54668bd'
  homepage 'https://www.epicbrowser.com/'
  license :gratis

  app 'Epic.app'
end
