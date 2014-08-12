class Hoster < Cask
  version '1.2'
  sha256 'aad3404d5127bd3299e57ecf152c911776bf47bea877be56c4a9cefbc0cbf095'

  url 'http://www.redwinder.com/macapp/hoster/tmp/Hoster1.208.zip'
  appcast 'http://www.redwinder.com/macapp/hoster/hoster12.xml'
  homepage 'http://www.redwinder.com/macapp/hoster/'

  install 'Hoster1.208.mpkg', :allow_untrusted => true
  uninstall :pkgutil => 'com.redwinder.hoster.hoster.pkg'
end
