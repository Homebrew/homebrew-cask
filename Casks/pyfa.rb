cask 'pyfa' do
  version '1.29.4,yc119.5-1.0'
  sha256 '14cfdaaf480b98e08b88cf6015064ac4f7873c276cc96ae6770b5e56c6e05e2a'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '839cab356a4b1c4a0ad7e6f8a33b4f68ba479973494540f22261104f438c8e78'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
