cask 'synalyze-it-pro' do
  version '1.20'
  sha256 '41328634b2a6058bf2fc96b4174baf4027a45273bc4a93908f38a4ec4b5b8120'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          checkpoint: '1c82898fd8f85619065cd82a4d09328e4c60f9385400de6e6a083bec75e16cbb'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'

  app 'Synalyze It! Pro.app'
end
