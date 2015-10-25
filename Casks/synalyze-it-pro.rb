cask :v1 => 'synalyze-it-pro' do
  version '1.12'
  sha256 '9bdfdc78affdc795cd44ce57be8be501dc8ea6041a4f3c70463053c307dfd40d'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  name 'Synalyze It! Pro'
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          :sha256 => '3c92a4517b3ca565f4ea21644d96041b73a8b121808ce55e0fe5b13a8c6c4f1a'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
