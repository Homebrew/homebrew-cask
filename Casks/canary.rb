cask 'canary' do
  version '1.8.1,392'
  sha256 '530006d36d58693c7f1f964d184d01facf159375aea73a3ff44ade291d8b3833'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: '0f221a1d55db589f50b768d6c2a18a7ab661d7014ea01bd134c815ce03377205'
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
