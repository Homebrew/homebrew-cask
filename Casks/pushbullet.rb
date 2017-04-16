cask :v1 => 'pushbullet' do
  version '1.2'
  sha256 :no_check

  url 'http://mohammadag.xceleo.org/public/MacOSX/PushBullet-1.2.dmg'
  name 'Pushbullet'
  homepage 'https://pushbullet.com'
  license :gratis

  app 'Pushbullet.app'
end
