class LogmeinHamachi < Cask
  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  homepage 'http://vpn.net'
  version 'latest'
  sha256 :no_check
  caskroom_only true
  caveats do
    manual_installer 'LogMeInHamachiInstaller.app'
  end
end
