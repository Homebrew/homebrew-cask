cask :v1 => 'synalyze-it-pro' do
  version '1.13'
  sha256 '64cdee281ae9c5829e5e4cf6734088414a776d46d282b6edae6a7e08ce7290f3'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  name 'Synalyze It! Pro'
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          :sha256 => 'eb77fa31623bdba61dfa091dd8a191ae46d9cc10a5c93a0e3cd28bb151b7d887'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
