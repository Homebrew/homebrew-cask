cask 'pyfa' do
  version '2.23.0'
  sha256 'a43756ee68c1d94fc7484438fe600d11428b37ad2d9e07b52df31ae02008363e'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
