cask 'canary' do
  version '2.03,411'
  sha256 'ef23fc92d412863a626d4f11bd0df2e67c5dc67a6884075fab5a9ac807d08df7'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: 'bd2342430e327ef03e185e0c7d67f8503f3e486b34b8a9e13ffa5d6d1e7d30ff'
  name 'Canary'
  homepage 'https://canarymail.io/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Canary.app'

  zap trash: [
               '~/Library/Application Scripts/Sanghani.Canary',
               '~/Library/Containers/Sanghani.Canary',
             ]
end
