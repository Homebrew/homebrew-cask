cask 'reveal' do
  version '1.6.3'
  sha256 '61312d50b822c4f37460f61c17cb091d3c10dae5ab446abd27d402976e2ed539'

  url "http://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'http://download.revealapp.com/reveal-release.xml',
          checkpoint: '59912bbc29ae92bde4c523d54cc1a76babadc134b8a37c512bb32f72762eaa76'
  name 'Reveal'
  homepage 'http://revealapp.com/'
  license :commercial

  app 'Reveal.app'
end
