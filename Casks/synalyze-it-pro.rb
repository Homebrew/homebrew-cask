cask 'synalyze-it-pro' do
  version '1.14'
  sha256 '25899c87a55d39d728ec945bce60fae4cf55e28092dc028010d2a3987ea5bb3f'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          :sha256 => '95ad48bb142297160131dbed70e62363c35fcaaf1a956f56c22cd1ec3c0ebb7e'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
