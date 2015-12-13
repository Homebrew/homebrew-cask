cask :v1 => 'reveal' do
  version '1.6.2'
  sha256 'e245d592e2397e7fd056ba47ac4b197335081302be98ee17d46249dbbcd3fa5c'

  url "http://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'http://download.revealapp.com/reveal-release.xml'
  name 'Reveal'
  homepage 'http://revealapp.com/'
  license :commercial

  app 'Reveal.app'
end
