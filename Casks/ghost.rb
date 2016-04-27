cask 'ghost' do
  version '0.3.2'
  sha256 '5c167e665a208847ffb5e01bb6e8927c6569bca00997b0d50314ef703cb89afe'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '2a175c290a3bce66d51fccf278d8bd697ed876fbdb8380e78cdb410afe62f38f'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads'
  license :mit

  app "#{version}/Ghost.app"
end
