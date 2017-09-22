cask 'airdroid' do
  version '3.5.2.0'
  sha256 '262d06802774513d3cca5f242660ec3e2667d608670445219f9433a5e05f227e'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
