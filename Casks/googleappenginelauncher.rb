cask :v1 => 'googleappenginelauncher' do
  version '1.9.15'
  sha256 '403a1df731537de41307a6245e3265b921c058c0c3ccc6dcedf0dd93439eff47'

  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '5d863bd317e9ee27e4268fb4413846ab15928757de0723a62fb8ad0c238a44af'
  homepage 'https://developers.google.com/appengine/'
  license :unknown    # todo: improve this machine-generated value

  app 'GoogleAppEngineLauncher.app'
end
