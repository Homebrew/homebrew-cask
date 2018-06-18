cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.13.0'
    sha256 'c00c6258aab33c193b7300681295166d6fdb7759cbd2f40c5aa266756b63a991'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
