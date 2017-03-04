cask 'hugin' do
  version '2016.2.0'
  sha256 '31c36dc9d8116c34f5f208a98bf1711fbf8b37f20dd82058561aa59f48d9143c'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss',
          checkpoint: '00abe255c13acffec0368944669e30f1690daf513050bd4f71afb2d42a4fb490'
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'

  suite 'Hugin'
end
