cask 'ghost' do
  version '1.4.0'
  sha256 'a50fddfd94a5eb160cfd064e5890283a67f807886d00dfbd1623fef8615141e9'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: 'bb0255e7b12202506075012f8e277429467d98cfe624bbcf611c7a5c3a6a44a2'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
