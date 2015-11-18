cask :v1 => 'black-ink' do
  version '1.6.3'
  sha256 '87b60a5d2ddec03e4c9c8506949abd0eb5391ca3f8cc1d29291e1899f1399857'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          :sha256 => '2c18470c2510e32cf8eacc19867067f88d5f01fd8f9fd6aa590d0237d4984695'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
