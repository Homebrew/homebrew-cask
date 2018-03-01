cask 'provisionql' do
  version '1.4.0'
  sha256 'c2d4b48f3e6f191fc9daafad67941caadf60b4023085849d2bce3d5fbb0b5193'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom',
          checkpoint: '5507bd7000949ff464ccfcad67f244d6109d42cd759942c43802eb96dafbe3f2'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'
end
