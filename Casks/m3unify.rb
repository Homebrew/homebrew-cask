cask 'm3unify' do
  version '1.4.2'
  sha256 '91bc8e53a10f670d3f939f19a1404a060c83fb47c52b7729e59023e915d66085'

  url "http://dougscripts.com/itunes/scrx/m3unifyv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          :sha256 => '522e2d09c204f4e0c5e99d132a4903ba97c86296c382a4089888667dc41b19b7'
  name 'M3Unify'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
