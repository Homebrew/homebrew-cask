cask 'provisionql' do
  version '1.4.1'
  sha256 'faebd520c79b0d8a598745a8d0a1ad7042d6b3d65cc4c49b29c0cc6b3c162e8d'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'
end
