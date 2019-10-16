cask 'request-rocket' do
  version '1.1.2'
  sha256 '1e0fa76f8ac7305df3327252d37997e38d269a484882fbd0ccf277426397ff3c'

  url "https://github.com/emartech/request-rocket/releases/download/#{version}/Request.Rocket-#{version}.dmg"
  appcast 'https://github.com/emartech/request-rocket/releases.atom'
  name 'Request Rocket'
  homepage 'https://github.com/emartech/request-rocket'

  app 'Request Rocket.app'
end
