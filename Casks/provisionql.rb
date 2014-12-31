cask :v1 => 'provisionql' do
  version '1.0.0'
  sha256 'fc21f2996050711a2496351092f3ffe88d9d017594ae913cce6ef059d1cf2c2a'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  homepage 'https://github.com/ealeksandrov/ProvisionQL'
  license :mit

  qlplugin 'ProvisionQL.qlgenerator'
end
