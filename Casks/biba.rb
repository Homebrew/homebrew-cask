cask 'biba' do
  version '3.9.3831'
  sha256 '69889fea00e847a35a0d5e6cda1519e4b03ae19787047ccf4e7732ed52607c43'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: '5f2c56164e5318ca44942920dad1e9e57fe90be5ec2be1c2c769cc8eee123d98'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
