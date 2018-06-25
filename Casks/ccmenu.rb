cask 'ccmenu' do
  version '13.0'
  sha256 '716702efabff1f0353aca4663b79b8dc7f034df3f8754f7673261e1d8e62a844'

  # github.com/erikdoe/ccmenu was verified as official when first introduced to the cask
  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'

  app 'CCMenu.app'
end
