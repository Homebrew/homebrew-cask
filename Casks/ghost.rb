cask 'ghost' do
  version '1.3.0'
  sha256 '0c871ed93f9d0536e910d7cbce22ad0eac7a84fd131f19d7b75aca7671dee041'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '63116eb7bdc8c0f15dda0e4819c65b06dd3f17081d41076a18442a7e57c8455f'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
