cask 'apptrap' do
  version '1.2.3'
  sha256 '39a8923698c2e1a38ff3fd7fc2c12b7a847566cf1f31f965d0fb57e2280aaa5c'

  url "http://onnati.net/apptrap/download/AppTrap#{version.dots_to_hyphens}.zip"
  appcast 'http://onnati.net/apptrap/ReleaseNotes.xml',
          checkpoint: '5808b1d59e4a2d49af25be84bc388e586ece3d22840a4c07368ee6044357ebf0'
  name 'AppTrap'
  homepage 'http://onnati.net/apptrap/'

  prefpane 'AppTrap.prefPane'
end
