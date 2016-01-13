cask 'dupin' do
  if MacOS.release <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.10.0'
    sha256 '44b47c6dfb83dda4991110875168aa0af6457325ae7b6b5e583c08335942474d'

    appcast 'http://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            :checkpoint => '2271aab9ffecd7a311a55addb5cfafb822792070c274acb0d734dade5b995564'
  end

  url "http://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'http://dougscripts.com/apps/dupinapp.php'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Dupin.app'
end
