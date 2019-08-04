cask 'scihubeva' do
  version 'v3.0.0'
  sha256 'ca6dafe8ece10d542c3aa2dfdca07d2ab87f782f5da7a4de084633104c751b46'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
