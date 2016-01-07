cask 'go2shell' do
  version '2.3'
  sha256 '8cdfbe43a9e0a6728cb2bc5f74bdf0c4087e6d033b829acb68cb5ceaddda44a3'

  url 'http://zipzapmac.com/download/Go2Shell'
  appcast 'http://appcast.zipzapmac.com/go2shell.xml',
          :sha256 => '8f3455bdf8903acfce6957f3e91f639dd378d989ceb951c69a8e919b7170ffb7'
  name 'Go2Shell'
  homepage 'http://zipzapmac.com/go2shell'
  license :gratis

  app 'Go2Shell.app'
end
