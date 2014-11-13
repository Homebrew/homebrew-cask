cask :v1 => 'air-connect' do
  version :latest
  sha256 :no_check

  url 'http://downloads.avatron.com/AirConnectInstaller.zip'
  homepage 'http://www.avatron.com/get-air-connect/'
  license :unknown

  app 'Air Connect.app'
end
