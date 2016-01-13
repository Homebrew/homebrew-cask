cask 'apptrap' do
  version '1.2.3'
  sha256 '39a8923698c2e1a38ff3fd7fc2c12b7a847566cf1f31f965d0fb57e2280aaa5c'

  url "http://onnati.net/apptrap/download/AppTrap#{version.dots_to_hyphens}.zip"
  appcast 'http://onnati.net/apptrap/ReleaseNotes.xml',
          :sha256 => 'e5ad0ae80a845683989e8946ee710923dadf90d1c66c15992d701bc1f81b5919'
  name 'AppTrap'
  homepage 'http://onnati.net/apptrap'
  license :other # see https://github.com/kvijayan/AppTrap/blob/master/LICENSE

  prefpane 'AppTrap.prefPane'
end
