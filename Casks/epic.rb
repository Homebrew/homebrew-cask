cask 'epic' do
  version '63.0.3239.108'
  sha256 'db70a27a4eaa3e9f504d1426bc2d3f6557ea6c4959e6a83114d015c8707a0753'

  # macepic-cbe.kxcdn.com was verified as official when first introduced to the cask
  url "https://cdn.epicbrowser.com/epic_#{version}.dmg"
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          checkpoint: 'baa4248683b2bde4cb5124bada0f5f7330ed865ef266ef7a7014729269debdf3'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'

  app 'Epic.app'
end
