cask 'apptrap' do
  version '1.2.3'
  sha256 '39a8923698c2e1a38ff3fd7fc2c12b7a847566cf1f31f965d0fb57e2280aaa5c'

  url "http://onnati.net/apptrap/download/AppTrap#{version.dots_to_hyphens}.zip"
  appcast 'http://onnati.net/apptrap/ReleaseNotes.xml',
          :sha256 => '557732cd118173c9b9ac078a54da8a8dc93ba678268be5677dddd5496da7c394'
  name 'AppTrap'
  homepage 'http://onnati.net/apptrap'
  license :other # see https://github.com/kvijayan/AppTrap/blob/master/LICENSE

  prefpane 'AppTrap.prefPane'
end
