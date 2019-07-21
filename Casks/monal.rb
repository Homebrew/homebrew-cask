cask 'monal' do
  version '2.4b7'
  sha256 'db51d8bbb5623b4f516f79168f45ed07aa1454cc4cd41cd435ca039aa934528c'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
