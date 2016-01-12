cask 'batchmod' do
  version '1.6.3'
  sha256 '6b42b4226414ff3dbd48395e77f97901ccef0ddc04984014b5cf6c39cc3dd249'

  url "https://www.lagentesoft.com/resources/batchmod_#{version.delete('.')}.zip"
  appcast 'http://www.macchampion.com/arbysoft/batchmodappcast.xml',
          :sha256 => '084fb16fff59ac943a72ef9ac56022ae3bbb859be9311aa598ea328ba1d7a681'
  name 'BatChmod'
  homepage 'https://www.lagentesoft.com/batchmod/'
  license :gratis

  app 'BatChmod.app'
end
