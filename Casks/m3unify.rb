cask 'm3unify' do
  version '1.9.3'
  sha256 'dfab7567c18308d54cfe38caae2d97797650637cabef74fbca7bbc838008a350'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: '4196a93d710d3903e800f816f6a93378195403a35ba47d02900ed35110a792de'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
