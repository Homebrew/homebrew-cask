cask :v1 => 'black-ink' do
  version '1.6.1'
  sha256 'efef4a810b5708478341e92f911aadc4e8f75b285a0bd7b37087d5252d0f6175'

  url "http://www.red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'http://www.red-sweater.com/blackink/appcast1.php',
          :sha256 => '0415edc784d3ade2f4f53a501cac7a584a01ebf09d51d5ea2803cbfbc5648496'
  homepage 'http://www.red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
