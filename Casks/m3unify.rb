cask 'm3unify' do
  version '2.0.1'
  sha256 'b272b6e2ec97fb1e8885d57892da9e3bfb2b7f162bf85b104b0d3fa80b69ca55'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  depends_on macos: '>= :mojave'

  app 'M3Unify.app'
end
