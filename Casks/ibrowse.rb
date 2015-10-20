cask :v1 => 'ibrowse' do
  version '1.0.4.0'
  sha256 '2224f521744b92ef478eef284ad8e6a3e4c42f3d899c4dd7a7bf2d232fdd8755'

  # macroplant.com is the official download host per the vendor homepage
  url "http://cdn.macroplant.com/release/iBrowse-#{version}.dmg"
  name 'iBrowse'
  appcast 'https://www.macroplant.com/ibrowse/ib-appcast.xml',
          :sha256 => '2dd21aed73c84b3b7c85ca29292f1c347fbadd5f9fd78866bd5db55d2c70e88f'
  homepage 'https://www.ibrowseapp.com/'
  license :gratis

  app 'iBrowse.app'
end
