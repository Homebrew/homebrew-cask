cask :v1 => 'logmein-hamachi' do
  version :latest
  sha256 :no_check

  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  name 'Hamachi'
  homepage 'http://vpn.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'LogMeIn'

  installer :manual => 'LogMeInHamachiInstaller.app'
end
