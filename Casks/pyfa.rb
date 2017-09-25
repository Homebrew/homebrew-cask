cask 'pyfa' do
  version '1.32.0,yc119.9-1.3'
  sha256 'f64f3be3fe3ebcd2bf729948e72e196c49e865ce3b17e0b9b362fbb9dcc624f9'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'd14fc399f50d9fcb8dce0386df4a0e6f5a6d4480b659e12ae5754474a8ab920d'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
