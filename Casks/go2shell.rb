cask :v1 => 'go2shell' do
  version :latest
  sha256 :no_check

  url 'http://zipzapmac.com/download/Go2Shell'
  name 'Go2Shell'
  appcast 'http://appcast.zipzapmac.com/go2shell.xml',
          :sha256 => '8f3455bdf8903acfce6957f3e91f639dd378d989ceb951c69a8e919b7170ffb7'
  homepage 'http://zipzapmac.com/go2shell'
  license :gratis

  app 'Go2Shell.app'
end
