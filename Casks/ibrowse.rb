cask 'ibrowse' do
  version '1.0.5.0'
  sha256 '8088c92b51d5ed6fa02b3b44d31cd2cba9286ad4278a37e182b54443551f0f22'

  # macroplant.com was verified as official when first introduced to the cask
  url "https://www.macroplant.com/release/iBrowse-#{version}.dmg"
  appcast 'https://www.macroplant.com/ibrowse/ib-appcast.xml',
          checkpoint: '7a32b83ef758e12e91441397c895e9afb894248277c4ebc9d67466a43e9730fc'
  name 'iBrowse'
  homepage 'https://www.ibrowseapp.com/'

  app 'iBrowse.app'
end
