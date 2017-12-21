cask 'ghost' do
  version '1.5.0'
  sha256 'f670cd54bf52d435510060990afadf401eefe7e7cfae90f9a72cc27080d8000f'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '31039d22fc7e3f02378f4013fc67ad47acae02736cab48b34e8ee9905c74c349'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
