cask 'm3unify' do
  version '1.6.0'
  sha256 '6fded03986ec51ac188b37e8f72c7bc350849028cb5096ceeccda6eff0af9c5b'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: '5af8461250442d7751c91312c87cc7580845d74b4387daa6830195aa542a4272'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
