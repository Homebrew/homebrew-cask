cask 'provisionql' do
  version '1.2.0'
  sha256 'e159ecfb9acb6cd98149cf6b3b120d7782a1baa2578ede1f0f936b1b2d1017bb'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom',
          checkpoint: 'cb20def872e0bc63a71a1942abe2d3c767a3615416dd081d1178d199a3758bd0'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'

  qlplugin 'ProvisionQL.qlgenerator'
end
