cask :v1 => 'meocloud' do
  version '0.1.115'
  sha256 '7ec0658eed5e77730275bf97e196ac3fea5ed4946e9632c0ae8458d8093768b1'

  url "https://meocloud.pt/binaries/osx/MEOCloud-#{version}.dmg"
  appcast 'https://services.sapo.pt/Application/Catalog/Update?appid=pt.sapo.mac.cloudpt',
          :sha256 => '0b3224464231b94ad2b2fb81a19beee7a6655e2efa09f8de04f0ba659fd933eb'
  homepage 'https://meocloud.pt'
  license :unknown

  app 'MEOCloud.app'
end
