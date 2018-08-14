cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.13.1'
    sha256 '56d6c70355beaf1fe06c483dbe457d125782e185af7047cbcb28145535f58784'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
