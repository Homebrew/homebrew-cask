class Hamachi < Cask
  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  homepage 'http://vpn.net'
  version 'latest'
  no_checksum
  link 'LogMeInHamachiInstaller.app'

  def caveats; <<-EOS.undent
    This brew cask installs the specialized LogMeIn Hamachi installer. Run it once to install Hamachi.
    EOS
  end
end
