cask 'pyfa' do
  version '2.0.0,yc120.3-1.8'
  sha256 '36d1540580f4893a4b49aa8ccd7709f16ebf8dbc3f8dad365f1161bcf8d961b9'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '13c72e4e6295e6f345a0d402ac474726564dcd260837a7bc6545b2a0e3cbf4f7'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
