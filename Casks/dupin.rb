cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.11.1'
    sha256 '1cb909a9e49ece636bfcd1a56827fb5ed89bd9089200bd8a56937787677da7d1'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: '4fb8b05a84b3e8929fae6e7afa071de4ed51c26139f4c25c160d03cf74623d15'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  depends_on macos: '>= :snow_leopard'

  app 'Dupin.app'
end
