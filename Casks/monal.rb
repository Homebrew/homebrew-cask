cask 'monal' do
  version '2.3b7'
  sha256 '5ede3f9fa8d882adb834d59897374a269e7523bd361efd7cf553a3cd2b1211df'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
