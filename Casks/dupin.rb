cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.11.1'
    sha256 '1cb909a9e49ece636bfcd1a56827fb5ed89bd9089200bd8a56937787677da7d1'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: '25f4adcc0846dcaf3d05488681bf7e70e7f338212e2097bf4f469ede80330ded'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
