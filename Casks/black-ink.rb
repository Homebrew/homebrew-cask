cask 'black-ink' do
  version '1.6.11'
  sha256 '8ebbd5638f88c6f34f5d07383757f90b468732e08adc2a0b531379f43b55c543'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
