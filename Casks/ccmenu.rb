cask 'ccmenu' do
  version '12.1'
  sha256 '3b9f226f57159bf395a4e76cd958f1f90c7a5c9b181c16fad64a96cff8f19c2e'

  # github.com/erikdoe/ccmenu was verified as official when first introduced to the cask
  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: '359155ebbd8e2ed24cfd5d3af31cc0ceebb7b44d5f63bc52a74b45e261bd8035'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'

  app 'CCMenu.app'
end
