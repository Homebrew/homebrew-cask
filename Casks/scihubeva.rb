cask 'scihubeva' do
  version 'v3.2.3'
  sha256 'b3020cd58e943ff2b4c5d7c834c3d2e1801b7e262df4ae08fadde6df0e6383b9'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
