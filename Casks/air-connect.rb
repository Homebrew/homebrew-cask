cask :v1 => 'air-connect' do
  version :latest
  sha256 :no_check

  url 'http://downloads.avatron.com/AirConnectInstaller.zip'
  name 'Air Connect'
  homepage 'http://www.avatron.com/get-air-connect/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Air Connect.app'
end
