cask 'm3unify' do
  version '1.11.0'
  sha256 'ce68bd4383187dff12a08a06cf229ce26bf3255e9f0b5606363dd746d16f1a2a'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
