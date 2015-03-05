cask :v1 => 'epic' do
  version '2461'
  sha256 '9f4fa39514c179a62daab892bddf5b7512fcec49c7fda9fe4be9d8c11c3016c5'

  # kxcdn.com is the official download host per the vendor homepage
  url "https://macepic-cbe.kxcdn.com/release_#{version}/Epic.dmg"
  name 'Epic'
  name 'Epic Privacy Browser'
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          :sha256 => '4249b7347d6edd78f8b421c8838c006731ab03477a6d17bd459cadb9519f4dc5'
  homepage 'http://www.epicbrowser.com'
  license :gratis

  app 'Epic.app'
end
