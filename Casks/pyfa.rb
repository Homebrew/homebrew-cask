cask 'pyfa' do
  version '1.29.3,yc119.5-1.0'
  sha256 '1c9de1119d9e7cfc1b004e5196747c1d59c767a88f8e1d3fd9e6ecaa388cc1a9'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '2940e61ab40bee484b4a1f0d27286492140b35bd65ce2c58e662cd3748e875bc'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
