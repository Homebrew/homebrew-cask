cask :v1 => 'provisionql' do
  version '1.1.0'
  sha256 '463d66986316ceadbca6acbd58e1381d26f6a80d464532342678ac46ec2492c0'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'
  license :mit

  qlplugin 'ProvisionQL.qlgenerator'
end
