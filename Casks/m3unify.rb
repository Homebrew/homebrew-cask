cask 'm3unify' do
  version '1.4.1'
  sha256 'aceda65ecb588fd51380e4dc77cd6c1b95070b60fd30e65b50ba093b11efcc1f'

  url "http://dougscripts.com/itunes/scrx/m3unifyv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          :sha256 => '96e87ec4a0281bcd55ebf18024b68ac65b5f6a4ad46de2522ebdac72c9be7094'
  name 'M3Unify'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
