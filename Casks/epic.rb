cask 'epic' do
  version '2462'
  sha256 'fc8fadf78816eaad050d514b3fc9a5c524b7fe5bf5a4b779e7b373ba2c240d1f'

  # kxcdn.com is the official download host per the vendor homepage
  url "https://macepic-cbe.kxcdn.com/#{version}/sign/Epic.dmg"
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          :checkpoint => '0e7ce223961097431e53ba189d3585dcef6cd7d58174e5119336c9089d5d12d1'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'
  license :gratis

  app 'Epic.app'
end
