cask 'black-ink' do
  version '1.6.3'
  sha256 '87b60a5d2ddec03e4c9c8506949abd0eb5391ca3f8cc1d29291e1899f1399857'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          :sha256 => '861f9133c2822d996a35eea14d42190d3f2a9b2bd8a0de4ccbff75cd34b0a45b'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
