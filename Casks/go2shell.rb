cask 'go2shell' do
  version '2.3'
  sha256 '8cdfbe43a9e0a6728cb2bc5f74bdf0c4087e6d033b829acb68cb5ceaddda44a3'

  url 'http://zipzapmac.com/download/Go2Shell'
  appcast 'http://appcast.zipzapmac.com/go2shell.xml',
          :sha256 => '4fa3da8281cf079b1a609799f4b99781a847fd16162e5f4e13a7fee3b18fdc39'
  name 'Go2Shell'
  homepage 'http://zipzapmac.com/go2shell'
  license :gratis

  app 'Go2Shell.app'
end
