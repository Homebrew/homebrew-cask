cask 'scrivener' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scrivener-2.xml',
          :checkpoint => 'a72d55b3c4787fd7bc602a9c5bfbb36b3103faf4a97ff12cd1d987c9e065eaa0'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'
  license :commercial

  app 'Scrivener.app'
end
