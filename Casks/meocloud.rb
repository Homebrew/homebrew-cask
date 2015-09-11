cask :v1 => 'meocloud' do
  version '0.2.7'
  sha256 'c03824e1173d4df7ea6b79822ccd0ab5f4bc6a3e1a85a5308ecf751f31785c15'

  url "https://meocloud.pt/binaries/osx/MEOCloud-#{version}.dmg"
  appcast 'https://services.sapo.pt/Application/Catalog/Update?appid=pt.sapo.mac.cloudpt',
          :sha256 => '0b3224464231b94ad2b2fb81a19beee7a6655e2efa09f8de04f0ba659fd933eb'
  name 'MEO Cloud'
  homepage 'https://meocloud.pt'
  license :gratis

  app 'MEOCloud.app'
end
