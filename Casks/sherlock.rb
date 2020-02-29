cask 'sherlock' do
  version '1.7.4'
  sha256 '2eb61363bbd22ccbbf93f188a33fcc897a16311b9112b84563c7217bf6cbd958'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/d2096a451f9849fd84ddb59fc0a30efe/app_versions/2?format=zip'
  appcast 'http://sparkle.sherlock.inspiredcode.io'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
