cask :v1 => 'synalyze-it-pro' do
  version '1.9'
  sha256 '5c772168f98df6cdf3797be94d7603145998f6899fd2f7c841a504a9136687ef'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  name 'Synalyze It! Pro'
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          :sha256 => 'a06ccd9206ae07ecbe4544280c0a443798300a946f78506fe12e01249feb2839'
  homepage 'http://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
