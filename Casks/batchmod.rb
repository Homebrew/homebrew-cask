cask :v1 => 'batchmod' do
  version '1.6.3'
  sha256 '6b42b4226414ff3dbd48395e77f97901ccef0ddc04984014b5cf6c39cc3dd249'

  url "https://www.lagentesoft.com/resources/batchmod_#{version.gsub('.','')}.zip"
  name 'BatChmod'
  homepage 'https://www.lagentesoft.com/batchmod/'
  license :gratis

  app 'BatChmod.app'
end
