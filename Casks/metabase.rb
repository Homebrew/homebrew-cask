cask 'metabase' do
  version '0.15.0'
  sha256 '4d15ef9b9eb943c27ae234a971d441ed48eedf77f48c12c72d7cfb7a3642d502'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '55607ec03b49eee1ef45ecfd05854bed83e6985c409fc9cc520ac809bb29a7c9'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
