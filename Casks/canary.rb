cask 'canary' do
  version '0.993,318,250'
  sha256 'd06fe507e7ad7b069dfb30952612ab5d2e6eca2f1cd131ad03c1189dd45b9278'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: '0134bce7dd19cbb09de5ecf0e8703a295ac1526ca668619e4f2adcd15dc46daf'
  name 'Canary'
  homepage 'https://canarymail.io/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Canary.app'

  zap delete: [
                '~/Library/Application Scripts/Sanghani.Canary',
                '~/Library/Containers/Sanghani.Canary',
              ]
end
