cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.14.1'
    sha256 'c4cd423768d2bd2982e10e965fcc8965dd78ce7b7e409a20f159a513573f6dd1'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
