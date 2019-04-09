cask 'm3unify' do
  version '1.12.0'
  sha256 '3147a00abee9528cca55767a54f345de5d5d27177371b6f9a6a368701cbef7a3'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
