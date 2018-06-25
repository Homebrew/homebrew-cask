cask 'monal' do
  version '2.1.2b2'
  sha256 '59227c08142e298dc40c71d014214e25d57cccc1895fdeb273906e7aac52cecd'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
