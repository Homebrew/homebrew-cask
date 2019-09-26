cask 'scihubeva' do
  version 'v3.2.0'
  sha256 '59f64e1521cacbbb85fc2b2ab2833c8651bf305512459778615ded40eaa27123'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
