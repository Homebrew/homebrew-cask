cask 'scapple' do
  version '1.3.2'
  sha256 'c4799d55939e635e42cb67b588f41a8a5fb58efeb768ca36d455072828dc7172'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'

  app 'Scapple.app'
end
