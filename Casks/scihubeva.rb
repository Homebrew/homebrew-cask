cask 'scihubeva' do
  version 'v3.2.2'
  sha256 '7803fb54a5dbcd20b5c3a59aaad20ede4ce9061a7f392e4b7de34989f02f1275'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
