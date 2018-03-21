cask 'pyfa' do
  version '1.35.2,yc120.2-1.2'
  sha256 'd9d2fa6daafb0937100c308ddcb96fc53ccb9929ce78b6b75bffef2467505465'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'd5418c2f1947616f30b75605a654e987c1a59f047a8f708f37de564530a1814b'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
