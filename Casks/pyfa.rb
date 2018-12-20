cask 'pyfa' do
  version '2.7.0,december-1.0'
  sha256 'f20e0b3071b9e0247b88095f17f7424039050ad9cb246c5af8ea49579effe4ba'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
