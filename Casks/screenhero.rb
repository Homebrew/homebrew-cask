cask 'screenhero' do
  version :latest
  sha256 :no_check

  url 'https://secure.screenhero.com/update/screenhero/Screenhero.dmg'
  appcast 'http://dl.screenhero.com/update/screenhero/sparkle.xml',
          :sha256 => '63bc13ec9f488a93c6f8654d5923ca070e1dab5212ab3165a63fd1febb49284c'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
