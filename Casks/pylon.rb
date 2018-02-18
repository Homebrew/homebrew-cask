cask 'pylon' do
  version '5.0.5.8973'
  sha256 '4f17df1c89337a49cf423775823d5fd31101409bd5c8c42751b9ac92c16d921d'

  url 'https://www.baslerweb.com/fp-1478427503/media/downloads/software/pylon_software/pylon-5.0.5.8973.dmg'
  name 'Basler Pylon 5 Camera Software Suite'
  homepage 'https://www.baslerweb.com/'

  pkg 'pylon-5.0.5.8973.pkg'

  uninstall pkgutil: 'com.baslerweb.pylon.*'
end
