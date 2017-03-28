cask 'ccmenu' do
  version '12.1'
  sha256 '3b9f226f57159bf395a4e76cd958f1f90c7a5c9b181c16fad64a96cff8f19c2e'

  # github.com/erikdoe/ccmenu was verified as official when first introduced to the cask
  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: '1de8927fbde7716a5197d631ab72ef7035b365d22350c5a8105bc762dda7ff94'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'

  app 'CCMenu.app'
end
