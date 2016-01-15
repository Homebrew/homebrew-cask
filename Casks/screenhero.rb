cask 'screenhero' do
  version :latest
  sha256 :no_check

  url 'https://secure.screenhero.com/update/screenhero/Screenhero.dmg'
  appcast 'http://dl.screenhero.com/update/screenhero/sparkle.xml',
          :checkpoint => '3b8ea92b934782ea5fe7d21760d98554443f7f95f34e464ca4d90021f6c4912c'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
