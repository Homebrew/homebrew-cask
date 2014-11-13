cask :v1 => 'googleappenginelauncher' do
  version '1.9.15'
  sha256 '0f11d2411ee245e9bd99323672fc967c2eb796f8baa42d48554b59696b64c362'

  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '5d863bd317e9ee27e4268fb4413846ab15928757de0723a62fb8ad0c238a44af'
  homepage 'https://developers.google.com/appengine/'
  license :unknown

  app 'GoogleAppEngineLauncher.app'
end
