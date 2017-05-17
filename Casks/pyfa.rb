cask 'pyfa' do
  version '1.29.2,yc119.5-1.0'
  sha256 'c14dab644980de80ddb93c4b1e3d7c5426680022e854cd24ce0c036b0c088193'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '553ae62cc168d9dff299c2fce097a3114dcc8fdbd26c4c27eb67b399fc672d33'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
