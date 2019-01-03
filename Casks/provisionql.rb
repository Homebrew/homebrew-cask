cask 'provisionql' do
  version '1.5.0'
  sha256 '01a8cae466cdcc5fc8677a31343bda2c8f0e5ebb6a271890b5f11a7cab52b838'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'
end
