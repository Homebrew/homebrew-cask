cask 'devkitpro-pacman' do
  version '1.0.0'
  sha256 '47abc542be5fa81cad6a6e668baa4c1ec3dab07dd06cd2e1d27211ff6beae6c8'

  # github.com/devkitPro/pacman was verified as official when first introduced to the cask
  url "https://github.com/devkitPro/pacman/releases/download/v#{version}/devkitpro-pacman-installer.pkg"
  appcast 'https://github.com/devkitPro/pacman/releases.atom',
          checkpoint: '5f01bdb49cd8c32de4a6f3115ff9e502d4885dbfd1f0ab8ac920fdaf50d9b79e'
  name 'devkitPro pacman'
  homepage 'https://devkitpro.org/'

  pkg 'devkitpro-pacman-installer.pkg'

  uninstall pkgutil: [
                       'org.devkitpro.pacman.pkg',
                       'org.devkitpro.pacman-scripts.pkg',
                     ]
end
