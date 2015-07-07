cask :v1 => 'black-ink' do
  version '1.6.2'
  sha256 '4bce28eaa25f980c0e13147594c503b97276f4be1738a823a3eb909ea4fec002'

  url "http://www.red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'http://www.red-sweater.com/blackink/appcast1.php',
          :sha256 => '2c18470c2510e32cf8eacc19867067f88d5f01fd8f9fd6aa590d0237d4984695'
  name 'Black Ink'
  homepage 'http://www.red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
