class Authbuddy < Cask
  url 'https://www.dssw.co.uk/authbuddy/dsswauthbuddy.dmg'
  homepage 'https://www.dssw.co.uk/authbuddy'
  version 'latest'
  no_checksum
  install 'DssW authbuddy.pkg'
  uninstall :files => Array['/usr/local/bin/authbuddy']
  caveats do
    files_in_usr_local
  end
end
