cask 'm3unify' do
  version '1.7.0'
  sha256 'e302aeb18f02c591de1b5b48e473df13f199df129fed10ffeeeeed4f26e328a2'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: 'd1ef8fcf53ba5a5c3924cf4f8bfe48125380afc69f11996862d00217ffa62251'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
