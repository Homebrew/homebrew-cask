cask :v1 => 'go2shell' do
  version :latest
  sha256 :no_check

  url 'http://zipzapmac.com/download/Go2Shell'
  name 'Go2Shell'
  appcast 'http://appcast.zipzapmac.com/go2shell.xml',
          :sha256 => '2a824962eb4bf47c11f69ce020dc07ad423d1c1d47df49e754fceb8b70ec2b1d'
  homepage 'http://zipzapmac.com/go2shell'
  license :gratis

  app 'Go2Shell.app'
end
