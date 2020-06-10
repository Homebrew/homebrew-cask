cask 'provisionql' do
  version '1.6.1'
  sha256 '3b545d71bbf2afc50719204071ffb57bc5b782881ace153807bea060b5300b27'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'

  caveats <<~EOS
    To prevent mobileprovision QuickLook override by Xcode:

      https://github.com/ealeksandrov/ProvisionQL/issues/20
  EOS
end
