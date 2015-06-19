cask :v1 => 'synalyze-it-pro' do
  version '1.11'
  sha256 'ed0e2fe884002fddf0001eee16ffa6cb121474b7d087763d0e4bf018c5a353b4'

  # it.com is the official download host per the vendor homepage
  url "http://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  name 'Synalyze It! Pro'
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          :sha256 => 'af1d32eca0a3085a258172fb4048c52211b0aefb6784593159d8f2a755224e61'
  homepage 'http://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
