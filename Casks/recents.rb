cask 'recents' do
  version '2.0.1,4624'
  sha256 'f1994d1b047079b55dd4a076d4fb08c047eeae1363de32b67ef66ce3e2d8f369'

  # rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b'
  name 'Recents'
  homepage 'http://recentsapp.com/'

  depends_on macos: '>= :high_sierra'

  app 'Recents.app'
end
