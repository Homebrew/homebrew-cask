cask 'm3unify' do
  version '1.8.2'
  sha256 'ffaaba934c061488e0d6f9941b287f555e7ed4ee561c79f15ccf10b7864669bf'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: 'c535c7926508af1fab1d79ccbee51f77d92a50f40ba5f2d3f1185207ed238a43'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
