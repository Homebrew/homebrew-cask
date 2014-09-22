class AirConnect < Cask
  version :latest
  sha256 :no_check

  url 'http://downloads.avatron.com/AirConnectInstaller.zip'
  homepage 'http://www.avatron.com/get-air-connect/'

  app 'Air Connect.app'
end
