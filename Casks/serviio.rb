cask 'serviio' do
  version '1.8'
  sha256 '96b71ae837bf83bbb19b3e7d94227e9a4f687e53d9e0b06ff8970cf096f98905'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'

  pkg "Serviio-#{version}.pkg"
end
