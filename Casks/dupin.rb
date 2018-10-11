cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.14.0'
    sha256 '5bba18216cdd01815df7c386d30c356f925b9bb264d3e0bc29c12d8eb7bdd791'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
