cask 'black-ink' do
  version '1.6.5'
  sha256 '36bbc05292f8dc87edc0390b24ac459c7a4b7da20e7862775f9fc54c33e7bc8b'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: 'affea6547a2c90c4cd861f9bdbb770dc22bc2321d3853880afacc88b9cbebf61'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'

  app 'Black Ink.app'
end
