class Soundflower < Cask
  version '1.6.6b'
  sha256 '61ca31d7478d057e32caaeac3c739f965ba9eb2a27570b3cc715e706d4740dfb'

  url 'https://soundflower.googlecode.com/files/Soundflower-1.6.6b.dmg'
  homepage 'https://code.google.com/p/soundflower/'

  pkg 'Soundflower.pkg', :allow_untrusted => true
  uninstall :pkgutil => 'com.cycling74.soundflower.*'
  caveats do
    reboot
  end
end
