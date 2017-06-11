cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.11.2'
    sha256 'c5f8ab3dc16eebf2fb7205e88a000e68bb6256aa86f96539083b6c6b344768e4'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: 'fa1d7890a2e25dc093172271be546ae3e40dc473814859c7f403c61047c6d124'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
