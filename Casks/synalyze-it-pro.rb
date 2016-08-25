cask 'synalyze-it-pro' do
  version '1.17'
  sha256 '14e589698e9086174cb0019340fd9fecb550b538d701e342f06d387f8ddd7bb3'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          checkpoint: 'd80e558a73b1568aec8f48ee91c9a438209c6bf84d64eda684c03569caa7d5a7'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
