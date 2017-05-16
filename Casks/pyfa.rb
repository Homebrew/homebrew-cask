cask 'pyfa' do
  version '1.29.1,yc119.5-1.0'
  sha256 'ad3e29b890715bf34bcdb7bf0d6d368fe3c829f44fda0df970e9bd8bb098f42d'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'fd8c36da203fc98e89e22034851170611ff3bd36e06af008146572b28c2694ab'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
