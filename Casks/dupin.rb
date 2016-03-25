cask 'dupin' do
  if MacOS.release <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.10.2'
    sha256 '060d469593e33e453eeeab46942f0a832042b32175e61377c99f19c2f11cbe57'

    appcast 'http://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: '2c663ac368987af0eca9b16cf3a4621227d894e362621b230c7b7bdeae0a59d9'
  end

  url "http://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'http://dougscripts.com/apps/dupinapp.php'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Dupin.app'
end
