cask 'amidst' do
  version '4.2'
  sha256 'dcc3692207ab4b386bc74a2be087bcd3b52f641a7f0cf505c166a7d8eccb0946'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: 'db88f7c138b4e42e7655422cf2854f14c487fd6c1dc3f42fbfa525dfd226fb8a'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
