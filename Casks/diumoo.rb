cask 'diumoo' do
  version '1.6.0beta'
  sha256 '6747c250af4a3ad6ea022725b0183e968f4be3f0333130de55f5795095c3759a'

  # github.com/shanzi/diumoo was verified as official when first introduced to the cask
  url "https://github.com/shanzi/diumoo/releases/download/#{version}/diumoo.zip"
  appcast 'https://github.com/shanzi/diumoo/releases.atom',
          checkpoint: 'ea8df697446f43212c3a242b7718f94595276e6de73cfb6a15b8a0b16f27d1f0'
  name 'diumoo'
  homepage 'http://diumoo.net/'

  app 'diumoo.app'
end
