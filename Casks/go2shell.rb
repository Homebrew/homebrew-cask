cask 'go2shell' do
  version '2.3'
  sha256 '8cdfbe43a9e0a6728cb2bc5f74bdf0c4087e6d033b829acb68cb5ceaddda44a3'

  url 'http://zipzapmac.com/download/Go2Shell'
  appcast 'http://appcast.zipzapmac.com/go2shell.xml',
          checkpoint: '80d5e9cc0a8c1a16116e34341d09a8d78b1aff5ce2a77c7fc0c0ff1f56b96235'
  name 'Go2Shell'
  homepage 'http://zipzapmac.com/go2shell'
  license :gratis

  app 'Go2Shell.app'
end
