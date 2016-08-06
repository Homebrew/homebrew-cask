cask 'm3unify' do
  version '1.4.4'
  sha256 'f31041a4664b8158b3514571a9221fa8aa55d0af31817bca72f141fb86d5ed84'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: '18a6929c547c19989a8ead8ead2bc8da131f45fe1e22639e6b2a8493b4ac30eb'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'
  license :commercial

  app 'M3Unify.app'
end
