cask 'diumoo' do
  version '1.6.0beta'
  sha256 '6747c250af4a3ad6ea022725b0183e968f4be3f0333130de55f5795095c3759a'

  # github.com/shanzi/diumoo was verified as official when first introduced to the cask
  url "https://github.com/shanzi/diumoo/releases/download/#{version}/diumoo.zip"
  appcast 'https://github.com/shanzi/diumoo/releases.atom',
          checkpoint: '5e4e7dc23c4461c9f091a583139d7abc5fd7a78a826c4bab526eb7d21374684d'
  name 'diumoo'
  homepage 'http://diumoo.net/'

  app 'diumoo.app'
end
