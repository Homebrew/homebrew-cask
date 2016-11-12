cask 'ghost' do
  version '1.0.0'
  sha256 'da78b42d8f2a97f38ce844a27b885a20916d176b9ab5f472848e2c2a16c56bee'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: 'e401dbb9d54f893e2330de2beb343aedd2146e3578cb7e5933fade5bb844a73c'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads'

  app 'Ghost.app'
end
