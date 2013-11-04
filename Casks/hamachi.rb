class Hamachi < Cask
  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  homepage 'http://vpn.net'
  version 'latest'
  no_checksum
  link 'LogMeInHamachiInstaller.app'

  def caveats
    <<-EOS.undent
      This Cask downloads the specialized LogMeIn Hamachi installer.
      Run it once to install Hamachi:
        open '#{self.destination_path}/LogMeInHamachiInstaller.app'
    EOS
  end
end
