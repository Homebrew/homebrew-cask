cask 'pdf-squeezer' do
  version '3.10.5'
  sha256 '30ed7389586cad83a9702e2f5f311fc1aab24dc1d8cf4f038b5bfa629c36c92a'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
