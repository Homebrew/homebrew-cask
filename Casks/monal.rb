cask 'monal' do
  version '2.5 beta 4,156'
  sha256 'ec4e2afb9620d26bb2b597ab8f6cc6051eabd6453634c13cdaf9afecf6b70a35'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.after_comma
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
