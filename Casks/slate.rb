class Slate < Cask
  url 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  appcast 'https://www.ninjamonkeysoftware.com/slate/appcast.xml'
  homepage 'https://github.com/jigish/slate'
  version 'latest'
  sha256 :no_check
  link 'Slate.app'
end
