cask 'scihubeva' do
  version 'v2.1.2'
  sha256 '84e4dc32437d6474aa90808cf8d97c3e1797770eb2911e4a0f55176ddb042197'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
