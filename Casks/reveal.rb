cask 'reveal' do
  version '1.6.2'
  sha256 'e245d592e2397e7fd056ba47ac4b197335081302be98ee17d46249dbbcd3fa5c'

  url "http://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'http://download.revealapp.com/reveal-release.xml',
          :sha256 => 'a240206b0ed484dfc4ed0193e2468dcdbe23eb91d8fe35a75ed1ce9aaca62e7b'
  name 'Reveal'
  homepage 'http://revealapp.com/'
  license :commercial

  app 'Reveal.app'
end
