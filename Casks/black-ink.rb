cask 'black-ink' do
  version '1.6.3'
  sha256 '87b60a5d2ddec03e4c9c8506949abd0eb5391ca3f8cc1d29291e1899f1399857'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: '6df38cebb4ab70d31b1150a1525a730f74d431de7a6abfa15e64add98efd3540'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
