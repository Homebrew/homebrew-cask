cask 'idocument-plus' do
  version '2.7'
  sha256 'a3ec0e2ada87b7795f1d7bc1b12610a800c2ce6b4442d07e7e24703c8f34a1e2'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/IcyBlaze-iDocument#{version.to_i}/Download/idocument_plus_#{version}.dmg"
  appcast 'http://t.icyblaze.com/idplusc4ud',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'iDocument Plus'
  homepage 'http://www.icyblaze.com/idocument/'
  license :commercial

  app 'iDocument Plus.app'
end
