cask 'ghost-desktop' do
  version '0.3.2'
  sha256 '5c167e665a208847ffb5e01bb6e8927c6569bca00997b0d50314ef703cb89afe'

  url 'https://github.com/TryGhost/Ghost-Desktop/releases/download/v0.3.2/ghost-desktop-0.3.2-osx.zip'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'
  license :unknown

  app '0.3.2/Ghost.app'

  uninstall delete: '~/Applications/Ghost.app'
end
