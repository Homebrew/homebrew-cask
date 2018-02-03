cask 'ghost' do
  version '1.5.1'
  sha256 'b49c1775d606a88469b6795104ae193266785f71626624fbdd85614206889c86'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '46ded7109c5c93f70b937a029d85060ea45d105c52513a946030b63a50812de2'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  depends_on macos: '>= :mavericks'

  app 'Ghost.app'
end
