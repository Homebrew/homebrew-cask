cask 'scapple' do
  version '1.3.1'
  sha256 'aacbabb14b4cb69ea8d6d93293ac2a20233be8174bd481ccb5dae479c8f39059'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scapple_107_#{version}.zip"
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml',
          checkpoint: 'a17f37fc9750c5750051727f13c3645952b50f70284149e95e2f01affc8cccdc'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'

  app 'Scapple.app'
end
