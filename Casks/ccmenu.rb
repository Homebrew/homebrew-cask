cask 'ccmenu' do
  version '13.0'
  sha256 '716702efabff1f0353aca4663b79b8dc7f034df3f8754f7673261e1d8e62a844'

  # github.com/erikdoe/ccmenu was verified as official when first introduced to the cask
  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: 'a9f1fc7448e5fa4c513b5296bd8fe3c095a04cd771a2f3d4633f8e5ebfb2ddd3'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'

  app 'CCMenu.app'
end
