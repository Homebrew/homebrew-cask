cask 'scihubeva' do
  version 'v3.1.0'
  sha256 '7ce36235ec14295f1241a9470396368e3a7bfafb4ffd10c505da2213363766f1'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
