cask 'synalyze-it-pro' do
  version '1.22'
  sha256 '4d984d532e2b8615a7a138ee482a22b1196ece4ecc4ab640aa25671b82b01313'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'

  app 'Synalyze It! Pro.app'
end
