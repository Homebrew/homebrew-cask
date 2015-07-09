cask :v1 => 'dupin' do
  if MacOS.release <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.8.8'
    sha256 'e5dbb32d06fb25208f3b9e679a495831fcc505536e66720b668c0e2eeb40af39'
  end

  url "http://dougscripts.com/itunes/scrx/dupinv#{version.gsub('.','')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
          :sha256 => '7d8ad3a9a08acc11723de678f2a6b542eb832c1e16cd33546fe6550656634778'
  name 'Dupin'
  homepage 'http://dougscripts.com/apps/dupinapp.php'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Dupin.app'
end
