class LogmeinHamachi < Cask
  version 'latest'
  sha256 :no_check

  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  homepage 'http://vpn.net'

  caskroom_only true
  caveats do
    manual_installer 'LogMeInHamachiInstaller.app'
  end
end
