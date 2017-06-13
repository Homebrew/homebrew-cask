cask 'bluefish' do
  version '2.2.10'
  sha256 'e6edd693b174c186be5eb2d2a8a89ae2608e8661f6441edbcaf27d2457d616fa'

  # bennewitz.com was verified as official when first introduced to the cask
  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg"
  appcast 'http://www.bennewitz.com/bluefish/stable/binaries/macosx/',
          checkpoint: '8caecd64ed7ba8bfe38f7bec653ebbba19372c885ccde58d12f6a67cd10cadec'
  name 'Bluefish'
  homepage 'http://bluefish.openoffice.nl/index.html'

  app 'Bluefish.app'
end
