cask 'amidst' do
  version '4.2'
  sha256 'dcc3692207ab4b386bc74a2be087bcd3b52f641a7f0cf505c166a7d8eccb0946'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: 'a38c3db3f628e2265d773fdacfba1a12bd5ce9716b6a7c1b2991750d8ba0ce9f'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
