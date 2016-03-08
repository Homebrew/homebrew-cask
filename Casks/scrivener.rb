cask 'scrivener' do
  version '2.7'
  sha256 '4b85b723448410e0903424749a568590c1007f324ef09d7b97b67b4d1c287214'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://scrivener.s3.amazonaws.com/mac_updates/Scrivener_106_#{version}.zip"
  appcast 'https://www.literatureandlatte.com/downloads/scrivener-2.xml',
          checkpoint: 'a72d55b3c4787fd7bc602a9c5bfbb36b3103faf4a97ff12cd1d987c9e065eaa0'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'
  license :commercial

  app 'Scrivener.app'
end
