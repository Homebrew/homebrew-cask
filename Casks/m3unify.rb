cask 'm3unify' do
  version '1.5.0'
  sha256 '23192fcc84a65e1238940b3d6ae9267d2e77940aaea9fde12b210b46424438dc'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: 'eabdc7bbebf77d9733fb5c569e73585bad6fd5d23413e57dd8b5acf94b5095f3'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
