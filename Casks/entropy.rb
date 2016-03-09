cask 'entropy' do
  version '1.6.0'
  sha256 '62ae4d0607a0637d404fef709494951610a13a8d02d8f2d887e6501f98c55591'

  # eigenlogik.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://eigenlogik.s3.amazonaws.com/releases/entropy/Entropy-#{version}.zip"
  appcast 'http://hyperion.eigenlogik.com/appcast/feed/entropy/',
          checkpoint: '37ce31b04dfe7736a4062e166c5f6d56d40a8e8a76aae070e05e9be44ffae087'
  name 'Entropy'
  homepage 'http://www.eigenlogik.com/entropy/'
  license :commercial

  app 'Entropy.app'
end
