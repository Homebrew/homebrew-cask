cask 'synalyze-it-pro' do
  version '1.23'
  sha256 '91082b632a619be6f7d8a0360354eafe9cf18c7e488c88d65f3bd1280ad77fa5'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'

  app 'Synalyze It! Pro.app'
end
