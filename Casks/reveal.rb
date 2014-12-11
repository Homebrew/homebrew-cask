cask :v1 => 'reveal' do
  version :latest
  sha256 :no_check

  url 'http://download.revealapp.com/Reveal.app.zip'
  appcast 'http://download.revealapp.com/reveal-release.xml'
  homepage 'http://revealapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Reveal.app'
end
