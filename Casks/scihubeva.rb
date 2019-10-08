cask 'scihubeva' do
  version 'v3.2.1'
  sha256 '30caed6892906b3f04379150fe4af45eb5b25c40ae3ca37888cd4a0a116b2003'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
