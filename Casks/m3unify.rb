cask 'm3unify' do
  version '1.11.3'
  sha256 'a55b678e2e27c0a14512ecf28444d6685463e2c4d7bf31a3e31f6f8480d9a46e'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
