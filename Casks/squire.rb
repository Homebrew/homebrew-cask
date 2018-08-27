cask 'squire' do
  version :latest
  sha256 :no_check

  # amazonaws.com/squire was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/squire/builds/Squire.dmg'
  name 'Squire'
  homepage 'http://squireapp.com/'

  app 'Squire.app'
end
