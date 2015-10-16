cask :v1 => 'provisionql' do
  version '1.2.0'
  sha256 'e159ecfb9acb6cd98149cf6b3b120d7782a1baa2578ede1f0f936b1b2d1017bb'

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast 'https://github.com/ealeksandrov/ProvisionQL/releases.atom'
  name 'ProvisionQL'
  homepage 'https://github.com/ealeksandrov/ProvisionQL'
  license :mit

  qlplugin 'ProvisionQL.qlgenerator'
end
