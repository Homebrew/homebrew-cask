cask :v1 => 'm3unify' do
  version '1.4.1'
  sha256 'aceda65ecb588fd51380e4dc77cd6c1b95070b60fd30e65b50ba093b11efcc1f'

  url "http://dougscripts.com/itunes/scrx/m3unifyv#{version.delete('.')}.zip"
  name 'M3Unify'
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          :sha256 => '9e120bf105c1089546f88ca341817430cb5514e98b5e60b77d901e5f94cf444b'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
