cask 'black-ink' do
  version '1.6.8'
  sha256 '7d9c2f2db5bc1967355ebc346047d6df9f99c747a46f69fa7cd6627b67221584'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: '69246c15127250855cf291db0613053da3583dcff4532f1bff0b8fc39b583b44'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
