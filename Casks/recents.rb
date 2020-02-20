cask 'recents' do
  version '2.0.3,4867'
  sha256 'f8c08455300ea60811ccc12aa8e70ac626ad69dfa21e673c404cbefb1bb9f068'

  # rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b'
  name 'Recents'
  homepage 'https://recentsapp.com/'

  depends_on macos: '>= :high_sierra'

  app 'Recents.app'
end
