cask 'batchmod' do
  version '1.7b5'
  sha256 'f5ebd90370e35a20b1ddf9a883ca8585f6eb732cfc658c5bdfa1b5e21914ee20'

  url "https://www.lagentesoft.com/resources/batchmod_#{version.no_dots}.zip"
  appcast 'http://www.macchampion.com/arbysoft/batchmodappcast.xml',
          checkpoint: '5c80b00dcb0c15447bd8d2e3853c65ab0500d3d12907a9c0880e54c50be33d21'
  name 'BatChmod'
  homepage 'https://www.lagentesoft.com/batchmod/'

  app 'BatChmod.app'
end
