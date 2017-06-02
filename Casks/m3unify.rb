cask 'm3unify' do
  version '1.8.0'
  sha256 '81ee37aa657f9907e4b96e07f93bf5e591349f8afea27adb0296c3f344da6d3d'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: '36775d0461ca8a0b0d99aa0b08659bd8917cd7263597e542d3a28cc89e243e51'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
