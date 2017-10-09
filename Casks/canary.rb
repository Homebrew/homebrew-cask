cask 'canary' do
  version '1.7.0,354'
  sha256 '1f50c23b54748cd0a90d3b6bc3760984eee51b6b36519b2634bd9f5499281623'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: '92b04e7859877e6ac713d4ba1543cfe96d4a1e18887d908924e0f0ac42b190c4'
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
