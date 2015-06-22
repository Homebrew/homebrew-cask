cask :v1 => 'jedict' do
  version '4.9.5'
  sha256 '6286c5f46e6c1404f007b364cc2baa3d7ce074c108be9c37de1270aca19bba78'

  url "http://jedict.com/Downloads/JEDict#{version.gsub('.','').zip"
  name 'Jedict'
  homepage 'http://www.jedict.com/'
  license :commercial

  app 'JEDict.app'
end
