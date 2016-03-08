cask 'dupin' do
  if MacOS.release <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.10.1'
    sha256 '19c62ff3225f31b80973e600866c0215342631237cf0966fda7c88f0d71baa3a'

    appcast 'http://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: 'edd0c2ed81d2529e434a182dc27728264e6e0cc61273ebe9f23f8ec3fefab483'
  end

  url "http://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'http://dougscripts.com/apps/dupinapp.php'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Dupin.app'
end
