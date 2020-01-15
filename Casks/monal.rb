cask 'monal' do
  version '2.5 beta 5,159'
  sha256 'e3ffeb9dd8d86359f9eafb877a9cb46938e546c2386af35ba24ebd4fdd375f57'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.after_comma
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
