class GambitC < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://www.iro.umontreal.ca/~gambit/download/gambit/v4.7/prebuilt/gambc-v4_7_2-macosx-intel32.dmg'
    sha256 'fb19aceeeac5e7ce4ae7e1a07dbf8ab81906d372fbea56493171aa0bfe47899c'
    install 'gambc-v4_7_2-macosx-intel32.pkg'
  else
    url 'http://www.iro.umontreal.ca/~gambit/download/gambit/v4.7/prebuilt/gambc-v4_7_2-macosx-intel64.dmg'
    sha256 '2be0b846bb469fad9c4501efa3d34ed7aab6cc2d2fdc5acbe4eb39c4dc39b4bd'
    install 'gambc-v4_7_2-macosx-intel64.pkg'
  end
  homepage 'http://gambitscheme.org/wiki/index.php/Main_Page'
  version '4.7.2'
  uninstall :script => {
                        :executable => '/Library/Gambit-C/v4.7.2/bin/uninstall-gambc',
                        :args => ['v4.7.2']
                       }
end
