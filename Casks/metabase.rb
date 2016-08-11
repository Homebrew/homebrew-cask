cask 'metabase' do
  version '0.19.2'
  sha256 '7f7db7097f5400e2592139dbc1ba86cee225102487267408ae899bd2755fbc34'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '382c2f29e728fe2d9ddf69879807f8949bc4fd3b6b93ca0863412e77a69dc1e8'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
