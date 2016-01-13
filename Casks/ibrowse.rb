cask 'ibrowse' do
  version '1.0.5.0'
  sha256 '8088c92b51d5ed6fa02b3b44d31cd2cba9286ad4278a37e182b54443551f0f22'

  # macroplant.com is the official download host per the vendor homepage
  url "https://www.macroplant.com/release/iBrowse-#{version}.dmg"
  appcast 'https://www.macroplant.com/ibrowse/ib-appcast.xml',
          :sha256 => '1156a1dff1995596cbae4d98da46c8570c73fd55862499f3580efbdf10c5cbac'
  name 'iBrowse'
  homepage 'https://www.ibrowseapp.com/'
  license :gratis

  app 'iBrowse.app'
end
