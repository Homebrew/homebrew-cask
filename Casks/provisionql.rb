cask 'provisionql' do
  version '1.6.0'
  sha256 'eb4646ca2f082f15755fb93b2b1ab70d62b439dd657917667a8a921c0fa437d2'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'

  caveats do
    'To prevent mobileprovision QuickLook override by Xcode: https://github.com/ealeksandrov/ProvisionQL/issues/20'
  end
end
