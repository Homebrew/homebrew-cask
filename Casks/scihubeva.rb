cask 'scihubeva' do
  version 'v3.1.2'
  sha256 'ce674f6e246ef26356686ca5a48a9c926b61a382f69de3b1e0ace1682426ab15'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
