cask 'black-ink' do
  version '1.6.6'
  sha256 'e26188469a9179f695f58ed40c078935def34d51564d0dfa4b3e03038431c1e6'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: 'da630d54480b42a975eeded2cb432e887a73c07cd5065a5250ccbf946b274cde'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
