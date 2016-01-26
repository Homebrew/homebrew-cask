cask 'reveal' do
  version '1.6.2'
  sha256 'e245d592e2397e7fd056ba47ac4b197335081302be98ee17d46249dbbcd3fa5c'

  url "http://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'http://download.revealapp.com/reveal-release.xml',
          checkpoint: '7d3b89ebb18c4a7384a3b919c7b89e146d7d1e72fa58bf2139417909b1c12511'
  name 'Reveal'
  homepage 'http://revealapp.com/'
  license :commercial

  app 'Reveal.app'
end
