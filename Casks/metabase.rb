cask :v1 => 'metabase' do
  version '0.12.1'
  sha256 'e5c16b342864f64f1502c31398eb814413269d0b10c114992b87a16a5c5c6f0d'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
