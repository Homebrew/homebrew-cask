cask 'm3unify' do
  version '2.0.0'
  sha256 'd27935e3b68fd075ca1aeac262077771ef894a095f7911a527e4ccfab8a9cd1a'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  depends_on macos: '>= :mojave'

  app 'M3Unify.app'
end
