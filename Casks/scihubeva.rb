cask 'scihubeva' do
  version 'v4.0.1'
  sha256 '5ba4ea891fa3781612d8c47c550920194e44bb0d4f49a724ab111d3aed35ebd0'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
