cask 'pyfa' do
  version '1.28.1,yc119.3-1.0'
  sha256 '8fbef12da3d055e84c76dd50b828aa9f439d51fbd3496751f37c57f2c7bd58c6'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'd6d6082e15b9942824b9e389e3ed4297996bb1bfe340d2d78d99d98cf29a2273'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
