cask 'pyfa' do
  version '1.33.0,lifeblood-1.0'
  sha256 '153f00f042c99031ebcd371f0880f73a8a88db75b7b67634464961038dbeb78a'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '3a55e3e6c8677e14b5cb5b40edaee48e72229aaaaaa197e07097a1a9795f29fc'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
