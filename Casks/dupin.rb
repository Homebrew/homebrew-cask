cask 'dupin' do
  version '2.14.1'
  sha256 'c4cd423768d2bd2982e10e965fcc8965dd78ce7b7e409a20f159a513573f6dd1'

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml'
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
