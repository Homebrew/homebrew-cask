cask 'canary' do
  version '0.916'
  sha256 'efd57e00bd616d3e1cf10447e14d7a91ed8075f25a99bccc0263298fb01fed2c'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/236?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: '066146a5d4973df03299e08672af916e90e61954d9bd9dbf5a5201c87e84103d'
  name 'Canary'
  homepage 'https://canarymail.io'

  auto_updates true

  app 'canary.app'
end
