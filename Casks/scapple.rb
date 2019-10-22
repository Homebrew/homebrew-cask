cask 'scapple' do
  version '1.3.3'
  sha256 '2693a64a4eed698fa64d2d772a6224a1b2a4c3c88c06af0fa7c5584d53fab8c7'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'

  app 'Scapple.app'
end
