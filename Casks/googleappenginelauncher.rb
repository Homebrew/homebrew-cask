cask :v1 => 'googleappenginelauncher' do
  version '1.9.17'
  sha256 '4af24bd90f0dce1c754b30edcaec72e407c13416ee3a4234f5ca1f68b61e8cbf'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '5d863bd317e9ee27e4268fb4413846ab15928757de0723a62fb8ad0c238a44af'
  homepage 'https://developers.google.com/appengine/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GoogleAppEngineLauncher.app'
end
