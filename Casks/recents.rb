cask 'recents' do
  version '2.0.2,4781'
  sha256 '0dd9cf23b0bf5ef611a85281daf7a5b4b6bbfb4f8c3fb2065f64a29c87f445e8'

  # rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b'
  name 'Recents'
  homepage 'http://recentsapp.com/'

  depends_on macos: '>= :high_sierra'

  app 'Recents.app'
end
