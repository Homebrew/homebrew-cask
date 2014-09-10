class Authbuddy < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.dssw.co.uk/authbuddy/dsswauthbuddy.dmg'
  homepage 'https://www.dssw.co.uk/authbuddy'

  pkg 'DssW authbuddy.pkg'
  uninstall :files => '/usr/local/bin/authbuddy'
  caveats do
    files_in_usr_local
  end
end
