cask 'synalyze-it-pro' do
  version '1.18'
  sha256 '9f860e7369529c12c195e2d831b5985139387c9235418744e7fac5285e7d5396'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          checkpoint: 'a707c86c78b38306eadf830802d60a913c22b9050a04f0d6f97785071dff0f28'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'

  app 'Synalyze It! Pro.app'
end
