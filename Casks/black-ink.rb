class BlackInk < Cask
  version '1.6.1'
  sha256 'efef4a810b5708478341e92f911aadc4e8f75b285a0bd7b37087d5252d0f6175'

  url "http://www.red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'http://www.red-sweater.com/blackink/appcast1.php'
  homepage 'http://www.red-sweater.com/blackink/'

  link 'Black Ink.app'
end
