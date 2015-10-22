cask :v1 => 'reveal' do
  version :latest
  sha256 :no_check

  url 'http://download.revealapp.com/Reveal.app.zip'
  appcast 'http://download.revealapp.com/reveal-release.xml'
  name 'Reveal'
  homepage 'http://revealapp.com/'
  license :commercial

  app 'Reveal.app'
end
