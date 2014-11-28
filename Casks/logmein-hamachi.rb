cask :v1 => 'logmein-hamachi' do
  version :latest
  sha256 :no_check

  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  homepage 'http://vpn.net'
  license :unknown

  installer :manual => 'LogMeInHamachiInstaller.app'
end
