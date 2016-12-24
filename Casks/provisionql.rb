cask 'provisionql' do
  version '1.3.0'
  sha256 '2b7ff935d8f4fa813f0cdac895ff9e4284e0090559e5f9c3f0bd7aadcd68e4b1'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom',
          checkpoint: '8de3dd53a45de649968cc684f123d7172538dedb01f553fd078931b07717abc3'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'
end
