class Authbuddy < Cask
  url 'https://www.dssw.co.uk/authbuddy/dsswauthbuddy.dmg'
  homepage 'https://www.dssw.co.uk/authbuddy'
  version '1.1.0'
  sha1 'c994c499d618f8aa4659655131453b1986e140fe'
  install 'DssW authbuddy.pkg'
  uninstall :files => Array['/usr/local/bin/authbuddy']
end
