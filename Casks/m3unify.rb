cask 'm3unify' do
  version '1.12.1'
  sha256 'cc961fb2cd380f646db79d4cc82147d82473a642c4544ae11d6aeef4cd167bdf'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
