cask :v1 => 'air-connect' do
  version :latest
  sha256 :no_check

  url 'http://downloads.avatron.com/AirConnectInstaller.zip'
  homepage 'http://www.avatron.com/get-air-connect/'
  license :unknown    # todo: improve this machine-generated value

  app 'Air Connect.app'
end
