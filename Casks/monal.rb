cask 'monal' do
  version '2.3b17'
  sha256 '34eaedf3e3dbc76e4400c14a6b7d674d1e801d7998e24ea14220014aa7582ee1'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
