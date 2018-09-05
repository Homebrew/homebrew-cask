cask 'pyfa' do
  version '2.4.0,yc120.8-1.0'
  sha256 '608a70a072c0329ace93e426fcac86b7593780642da6b8bfff088daf5d89025a'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
