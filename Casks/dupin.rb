cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.11.0'
    sha256 '57bbc2247a806fc1bcc83e0abcdf7ea078203c205bd1717955d25b485fd3e83e'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: '4c3f8d66bae375c1cd896ead741f4c5aa90c0295687cbb116b3ddb306b3d31fc'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  depends_on macos: '>= :snow_leopard'

  app 'Dupin.app'
end
