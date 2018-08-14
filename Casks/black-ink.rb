cask 'black-ink' do
  version '1.6.10'
  sha256 'a5845ffa7dfabb97f107fff4576c0480cd0ec39bd07cf0c4031a0ce9e76c2c1f'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
