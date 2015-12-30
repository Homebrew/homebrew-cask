cask 'scrivener' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scrivener-2.xml',
          :sha256 => 'ef649700a85274140e4f7eae854a646a2946f4676d82f373c07fb2d6593364bd'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'
  license :commercial

  app 'Scrivener.app'
end
