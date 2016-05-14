cask 'biba' do
  version '3.12.3916'
  sha256 '2ff92b59e6baf307aafed6e2a77353b3c16a1db60ef67588cf181019326b5bda'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: '974e46a1faed589f49ea51c63483aa0607cfaa3d6baa4aef82f4ff658cfafb34'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
