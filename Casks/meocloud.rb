cask 'meocloud' do
  version '0.2.29'
  sha256 '909dfe26800c3ecbd424af4cbe8bb37670a057b6a75b05a24b4c86b210d2ef56'

  url "https://meocloud.pt/binaries/osx/MEOCloud-#{version}.dmg"
  appcast 'https://services.sapo.pt/Application/Catalog/Update?appid=pt.sapo.mac.cloudpt'
  name 'MEO Cloud'
  homepage 'https://meocloud.pt/'

  app 'MEOCloud.app'
end
