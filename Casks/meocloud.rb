class Meocloud < Cask
  version '0.1.115'
  sha256 '7ec0658eed5e77730275bf97e196ac3fea5ed4946e9632c0ae8458d8093768b1'
  
  url 'https://meocloud.pt/binaries/osx/MEOCloud-0.1.115.dmg'
  appcast 'https://services.sapo.pt/Application/Catalog/Update?appid=pt.sapo.mac.cloudpt'
  homepage 'https://meocloud.pt'

  link 'MEOCloud.app'
end
