cask 'batchmod' do
  version '1.7b5'
  sha256 'f5ebd90370e35a20b1ddf9a883ca8585f6eb732cfc658c5bdfa1b5e21914ee20'

  url "https://www.lagentesoft.com/resources/batchmod_#{version.no_dots}.zip"
  appcast 'http://www.macchampion.com/arbysoft/batchmodappcast.xml',
          checkpoint: '8dc120c11cd4137e4bad1717e03e50fab99aeb762e3610ee96494850cb01e0df'
  name 'BatChmod'
  homepage 'https://www.lagentesoft.com/batchmod/'

  app 'BatChmod.app'
end
