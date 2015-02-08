cask :v1 => 'epic' do
  version :latest
  sha256 :no_check

  # kxcdn.com is the official download host per the vendor homepage
  url 'https://macepic-cbe.kxcdn.com/Alt/Epic.dmg'
  name 'Epic'
  name 'Epic Privacy Browser'
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          :sha256 => '4249b7347d6edd78f8b421c8838c006731ab03477a6d17bd459cadb9519f4dc5'
  homepage 'http://www.epicbrowser.com'
  license :gratis

  app 'Epic.app'
end
