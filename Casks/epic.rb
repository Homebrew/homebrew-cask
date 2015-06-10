cask :v1 => 'epic' do
  version '2462'
  sha256 'fc8fadf78816eaad050d514b3fc9a5c524b7fe5bf5a4b779e7b373ba2c240d1f'

  # kxcdn.com is the official download host per the vendor homepage
  url "https://macepic-cbe.kxcdn.com/#{version}/sign/Epic.dmg"
  name 'Epic Privacy Browser'
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          :sha256 => '4249b7347d6edd78f8b421c8838c006731ab03477a6d17bd459cadb9519f4dc5'
  homepage 'https://www.epicbrowser.com/'
  license :gratis

  app 'Epic.app'
end
