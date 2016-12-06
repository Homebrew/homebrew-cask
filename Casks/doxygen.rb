cask 'doxygen' do
  version '1.8.12'
  sha256 'f3688ea2228178018912f4a3f1f69f7a9abf58584c573b31353909654cf516ba'

  url "https://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  appcast 'https://www.stack.nl/~dimitri/doxygen/manual/changelog.html',
          checkpoint: 'e155524d8f1555efdea22a261c0075b8c2c012da2ec54fbf7ec13d139b2a58ab'
  name 'Doxygen'
  homepage 'https://www.stack.nl/~dimitri/doxygen/'

  app 'Doxygen.app'
end
