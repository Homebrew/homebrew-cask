cask :v1 => 'synalyze-it-pro' do
  version '1.9'
  sha256 '5c772168f98df6cdf3797be94d7603145998f6899fd2f7c841a504a9136687ef'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  name 'Synalyze It! Pro'
  homepage 'http://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
