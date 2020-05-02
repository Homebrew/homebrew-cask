cask 'scihubeva' do
  version 'v4.0.0'
  sha256 'cf3857084f4a78092621bb7e836e4db16b26e3c10551f77a3ead7ed40b9fb5e9'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
