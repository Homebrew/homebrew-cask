cask 'pyfa' do
  version '1.34.0,.arms.race-1.3'
  sha256 '93c64b7fcee20c3dad94dbf7a6ca2ee5d48651f2119622a31e51a581960cd948'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'd5b8613c5c0a368fe5456a2884e809c5ce3602cdfab9ffafca8a778e1915ebc2'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
