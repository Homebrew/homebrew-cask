class Hamachi < Cask
  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  homepage 'http://vpn.net'
  version 'latest'
  no_checksum
  link 'LogMeInHamachiInstaller.app'
  caveats do
    manual_installer 'LogMeInHamachiInstaller.app'
  end
end
