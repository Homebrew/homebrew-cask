cask 'synalyze-it-pro' do
  version '1.16'
  sha256 'e134b88cad3f07441307bae72c6abe386118769d614c0df3f0b6ccb51233c8de'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          checkpoint: '5c226dbef95724d894242452b0bb521f5b1128739d6cbf064aea687b32187f94'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
