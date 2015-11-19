cask :v1 => 'meocloud' do
  version '0.2.29'
  sha256 '909dfe26800c3ecbd424af4cbe8bb37670a057b6a75b05a24b4c86b210d2ef56'

  url "https://meocloud.pt/binaries/osx/MEOCloud-#{version}.dmg"
  appcast 'https://services.sapo.pt/Application/Catalog/Update?appid=pt.sapo.mac.cloudpt',
          :sha256 => '203b4c163172f8c8eeb0016d11b17653e1b75994874d7c8f39013d18304922e1'
  name 'MEO Cloud'
  homepage 'https://meocloud.pt'
  license :gratis

  app 'MEOCloud.app'
end
