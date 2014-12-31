cask :v1 => 'bluegriffon' do
  version '1.7.2'
  sha256 'a54cfe176dbc67ffa4fdd20b41447fb4c4f2fbf1f80282d81e93e63b5d4b996f'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac.dmg"
  homepage 'http://bluegriffon.org'
  license :oss

  app 'BlueGriffon.app'
end
