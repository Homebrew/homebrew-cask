cask 'black-ink' do
  version '1.6.9'
  sha256 'e731b896c552d3585d5b22f8236029d0b765c2b8b2ed0ee24c29bb6083accbab'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: '8b5d7573b18866fc604e866270bd88ecf86482e6d7089374750b67b68235f4e7'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
