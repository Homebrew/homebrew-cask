cask 'synalyze-it-pro' do
  version '1.21.1'
  sha256 '4febdb58232d0fec26ed8ac5a505723dd3d1c9d6e712ebb366f0077a37d1a0fd'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          checkpoint: '3daa1cc2ea889094ffb4b4c3974a681e7750c723331610da245b9e500c2dd992'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'

  app 'Synalyze It! Pro.app'
end
