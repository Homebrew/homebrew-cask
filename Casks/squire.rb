cask 'squire' do
  version :latest
  sha256 :no_check

  # squire.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://squire.s3.amazonaws.com/builds/Squire.dmg'
  name 'Squire'
  homepage 'http://squireapp.com/'

  app 'Squire.app'
end
