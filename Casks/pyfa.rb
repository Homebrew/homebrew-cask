cask 'pyfa' do
  version '2.5.0,yc120.10-1.0'
  sha256 '1924a6c9f184c14ecffc3fcecb58a8261fdf64ab86114e6a183b53c5f82bdb53'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
