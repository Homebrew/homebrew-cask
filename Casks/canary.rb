cask 'canary' do
  version '1.6.5,340'
  sha256 'ce263f46daf09eb3c352f8c218120835268d06ce00d53d592229637890867a05'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: 'f45b0a4641027abd6ed3822b4ea6e93e1f72322c4d4f35932936ce9f08636c3d'
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
