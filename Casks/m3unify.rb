cask 'm3unify' do
  version '1.4.2'
  sha256 '91bc8e53a10f670d3f939f19a1404a060c83fb47c52b7729e59023e915d66085'

  url "http://dougscripts.com/itunes/scrx/m3unifyv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          :checkpoint => 'f17cc4b26077dcb3addd16e0ddfaf0dd81cfdf69a004c65934ee751bd6dc7af0'
  name 'M3Unify'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
