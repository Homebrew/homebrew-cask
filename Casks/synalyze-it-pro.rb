cask 'synalyze-it-pro' do
  version '1.14'
  sha256 '25899c87a55d39d728ec945bce60fae4cf55e28092dc028010d2a3987ea5bb3f'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          :sha256 => 'ba55ed0d8bbf7c29887933fe6c9c9d1c0eb776007a5fde75a32c1e7689367d3c'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
