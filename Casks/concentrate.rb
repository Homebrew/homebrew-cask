cask :v1 => 'concentrate' do
  version '1.2.2'
  sha256 '16e9ad16b915b98460a66553d1ec8eef20fece7d53ae50701b6e3ac048aba47e'

  url "http://www.getconcentrating.com/builds/concentrate.#{version}.zip"
  appcast 'http://getconcentrating.com/concentrate_appcast.xml',
          :sha256 => 'bf33826f30bdc3002eda3ca0e67965541901c24083f0f213a5df4ba697062b88'
  name 'Concentrate'
  homepage 'http://www.getconcentrating.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Concentrate.app'

  zap :delete => '~/Library/Application Support/Concentrate/Concentrate.sqlite3'
end
