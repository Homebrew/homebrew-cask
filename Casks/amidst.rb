cask 'amidst' do
  version '4.2'
  sha256 'dcc3692207ab4b386bc74a2be087bcd3b52f641a7f0cf505c166a7d8eccb0946'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: '8dc7f1e4b3c65371679fc7b5aa362abd65331bf790169a3af6ab2641351a1ed5'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
