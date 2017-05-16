cask 'hugin' do
  version '2016.2.0'
  sha256 '31c36dc9d8116c34f5f208a98bf1711fbf8b37f20dd82058561aa59f48d9143c'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss',
          checkpoint: 'b5547e1ec75e4c68666a44ba0b96a8d7c24b4be47b950668df81159e7a49f829'
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'

  suite 'Hugin'
end
