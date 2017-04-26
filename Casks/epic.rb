cask 'epic' do
  version '53.0.2785.143'
  sha256 'd5182231a9cbecbe39ff3b562e876b3f03092c71c8ccfb7c71880c88bd271297'

  # macepic-cbe.kxcdn.com was verified as official when first introduced to the cask
  url "https://macepic-cbe.kxcdn.com/Epic_#{version}.dmg"
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          checkpoint: 'baa4248683b2bde4cb5124bada0f5f7330ed865ef266ef7a7014729269debdf3'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'

  app 'Epic.app'
end
