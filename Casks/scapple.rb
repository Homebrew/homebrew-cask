cask 'scapple' do
  version '1.3'
  sha256 'f4a8b5cafbb36676f658807ab5ba1ebb52553903d23da23db0907e516755252f'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https:/scrivener.s3.amazonaws.com/mac_updates/Scapple_107_#{version}.zip"
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml',
          checkpoint: '422e3ad5a0b009557cc08ff795bd79b6fb18a7d0dffdc8cde69ef2cc44fb8298'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'

  app 'Scapple.app'
end
