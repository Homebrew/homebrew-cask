cask :v1 => 'black-ink' do
  version '1.6.2'
  sha256 '4bce28eaa25f980c0e13147594c503b97276f4be1738a823a3eb909ea4fec002'

  url "http://www.red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'http://www.red-sweater.com/blackink/appcast1.php',
          :sha256 => '0415edc784d3ade2f4f53a501cac7a584a01ebf09d51d5ea2803cbfbc5648496'
  name 'Black Ink'
  homepage 'http://www.red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
