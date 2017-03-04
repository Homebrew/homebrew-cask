cask 'black-ink' do
  version '1.6.7'
  sha256 '795c74fca4681fd51e0910484ba19e0c2aeea48b36d4d5236104e9117bc3bb4e'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: '788f8eca5bd2ee64c87dbb0f7df707c184450bc35b2449e661aaf6cd3345d816'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
