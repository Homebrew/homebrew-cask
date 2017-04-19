cask 'canary' do
  version '0.965'
  sha256 'efd57e00bd616d3e1cf10447e14d7a91ed8075f25a99bccc0263298fb01fed2c'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/236?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: '6f149aba00dc0b5ee994e8fc95401aa9ebeefd760ed3a9fc0b51f5b3ddc45f46'
  name 'Canary'
  homepage 'https://canarymail.io/'

  auto_updates true

  app 'Canary.app'

  zap delete: [
                '~/Library/Application Scripts/Sanghani.Canary',
                '~/Library/Containers/Sanghani.Canary',
              ]
end
