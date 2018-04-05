cask 'monal' do
  version '2b11'
  sha256 '826e6c6146ec6e9235e1d9d7ed2c028c7b4ea3aa314f8f87adb6f21800e6e2e7'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          checkpoint: 'a39169bd64ac3ba0a93a85785d2413ae71f0a19fbcc1d6dca15203157b26e16d'
  name 'Monal'
  homepage 'https://monal.im/'

  app 'Monal.app'
end
