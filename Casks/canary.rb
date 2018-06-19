cask 'canary' do
  version '2.06,418'
  sha256 'dae114de1e02c3cb980acb2af2deed5793a9d5a0e5e3f9231d4b390c657eecc4'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050'
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
