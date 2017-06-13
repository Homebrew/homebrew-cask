cask 'hugin' do
  version '2016.2.0'
  sha256 '31c36dc9d8116c34f5f208a98bf1711fbf8b37f20dd82058561aa59f48d9143c'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss',
          checkpoint: '7c098890c5f1723f0fa0160a96c2cec13fbdf24706ad5a2a54394a0d971ac47d'
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'

  suite 'Hugin'
end
