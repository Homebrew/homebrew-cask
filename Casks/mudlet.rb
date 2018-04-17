cask 'mudlet' do
  version '3.8.1'
  sha256 'de506ac9020d34051087f0c9228fa592deaa0c482566124b2d87106823cbe213'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: '4da1fa2921a07d86543cda43adcaced2f63fa3fb894549810d977dde2434a181'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
