cask 'batchmod' do
  version '1.6.3'
  sha256 '6b42b4226414ff3dbd48395e77f97901ccef0ddc04984014b5cf6c39cc3dd249'

  url "https://www.lagentesoft.com/resources/batchmod_#{version.delete('.')}.zip"
  appcast 'http://www.macchampion.com/arbysoft/batchmodappcast.xml',
          checkpoint: '7cfd47a5e18fba5b39592454a7b97f8feef2239a33b7c15450b4ba73903dfaaf'
  name 'BatChmod'
  homepage 'https://www.lagentesoft.com/batchmod/'
  license :gratis

  app 'BatChmod.app'
end
