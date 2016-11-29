cask 'idocument-plus' do
  version '2.7'
  sha256 'a3ec0e2ada87b7795f1d7bc1b12610a800c2ce6b4442d07e7e24703c8f34a1e2'

  # amazonaws.com/IcyBlaze-iDocument2 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/IcyBlaze-iDocument2/Download/idocument_plus_#{version}.dmg"
  appcast 'http://www.icyblaze.com/idocument/changelogs/idocumentplus_release.html',
          checkpoint: '816e6021878b62ab2c0e0f2f808255a08ae4b2dd1e4da7cfdd62170e7c7a1cde'
  name 'iDocument Plus'
  homepage 'http://www.icyblaze.com/idocument/'

  app 'iDocument Plus.app'
end
